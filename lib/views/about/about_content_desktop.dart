import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:shiny_object/widgets/footer.dart';

class AboutContentDesktop extends StatelessWidget {
  AboutContentDesktop({
    Key key,
  }) : super(key: key);

  static const _headerColor = Color(0xff0a0a0a);

  static const _defaultEventImage = 'assets/images/michael_jordan_portrait.jpg';

  static const TextStyle _headerStyle1 = TextStyle(
    color: Colors.white,
    fontFamily: 'Lato',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle _headerStyle2 = TextStyle(
    color: Colors.black87,
    fontFamily: 'Lato',
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  final MarkdownStyleSheet _markdownStyleSheet = MarkdownStyleSheet(
    blockSpacing: 21,
    h1: _headerStyle1.copyWith(color: Colors.black87),
    h2: _headerStyle2,
    h3: _headerStyle1.copyWith(
        color: Colors.black87, fontSize: 24, fontWeight: FontWeight.w600),
    h4: _headerStyle1.copyWith(
        color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w600),
    p: _headerStyle1.copyWith(
      color: Colors.black,
      fontFamily: 'Lato',
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      height: 1.6,
    ),
  );

  Widget _header() {
    return IntrinsicHeight(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1250),
        child: Container(
          padding: EdgeInsets.fromLTRB(92, 28, 92, 14),
          color: _headerColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Container(
                      // decoration: _imageDecoration,
                      child: Image.asset(_defaultEventImage,
                          alignment: Alignment.centerLeft),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Michael Jordan',
                    style: _headerStyle1,
                  ),
                  Text(
                    'whoami',
                    style: _headerStyle2.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff1e88e5)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16)),
                        ),
                        onPressed: () => {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Download Resume',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(width: 12, height: 12),
                            Icon(Icons.arrow_downward)
                          ],
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _loadAboutText() async {
    try {
      return await rootBundle.loadString('assets/docs/about.md');
    } catch (e) {
      print('$e');
      return Future<String>.value('Error loading about.md');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(minHeight: 900),
      // height: 900,
      child: Column(
        children: [
          _header(),
          FutureBuilder<String>(
            future: _loadAboutText(),
            builder: (context, snapshot) {
              String aboutData = snapshot.hasData
                  ? snapshot.data
                  : ':wink: markdown data not loaded';
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1250),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 92, vertical: 46),
                  margin: EdgeInsets.symmetric(horizontal: 92, vertical: 8),
                  child: MarkdownBody(
                    extensionSet: md.ExtensionSet.gitHubWeb,
                    styleSheet: _markdownStyleSheet,
                    styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
                    data: aboutData,
                  ),
                ),
              );
            },
          ),
          // Placeholder(fallbackHeight: 2000,),
          Footer(),
        ],
      ),
    );
  }
}
