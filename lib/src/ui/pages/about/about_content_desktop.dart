//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:shiny_object_affliction/src/providers/providers.dart';

import '../../theme/app_text_style.dart';

class AboutContentDesktop extends ConsumerWidget {
  const AboutContentDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final about = ref.watch(aboutProvider);
    return about.when(
        data: (String welcome) => AboutContent(about: welcome),
        error: (_, __) => const Placeholder(),
        loading: () => CircularProgressIndicator());

    const noMarkdownData = ':wink: markdown data not loaded';
    // return Container(
    //   // constraints: BoxConstraints(minHeight: 900),
    //   // height: 900,
    //   child: Column(
    //     children: [
    //       _header(),
    //       FutureBuilder<String>(
    //         future: _loadAboutText(),
    //         builder: (context, snapshot) {
    //           String aboutData = snapshot.hasData
    //               ? snapshot.data ?? noMarkdownData
    //               : noMarkdownData;
    //           return ConstrainedBox(
    //             constraints: const BoxConstraints(maxWidth: 1250),
    //             child: Container(
    //               color: Colors.white,
    //               padding:
    //                   const EdgeInsets.symmetric(horizontal: 92, vertical: 46),
    //               margin:
    //                   const EdgeInsets.symmetric(horizontal: 92, vertical: 8),
    //               child: MarkdownBody(
    //                 extensionSet: md.ExtensionSet.gitHubWeb,
    //                 styleSheet: _markdownStyleSheet,
    //                 styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
    //                 data: aboutData,
    //               ),
    //             ),
    //           );
    //         },
    //       ),
    //       // Placeholder(fallbackHeight: 2000,),
    //       const Footer(),
    //     ],
    //   ),
    // );
  }
}

class AboutContent extends StatelessWidget {
  final String about;

  const AboutContent({Key? key, required this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AboutHeader(),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1250),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 92, vertical: 46),
            margin: const EdgeInsets.symmetric(horizontal: 92, vertical: 8),
            child: Column(
              children: [
                MarkdownBody(
                  extensionSet: md.ExtensionSet.gitHubWeb,
                  styleSheet: MarkdownStyle.main,
                  styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
                  data: about,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AboutHeader extends StatelessWidget {
  const AboutHeader({Key? key}) : super(key: key);

  static const _defaultEventImage = 'assets/images/michael_jordan_portrait.jpg';

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1250),
        child: Container(
          padding: const EdgeInsets.fromLTRB(92, 28, 92, 14),
          color: Theme.of(context).splashColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 30),
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
                children: const <Widget>[
                  Text(
                    'Michael Jordan',
                    style: AppTextStyle.headline1,
                  ),
                  Text(
                    'whoami',
                    style: AppTextStyle.headline2,
                  ),
                ],
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff1e88e5)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16)),
                        ),
                        onPressed: () => {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
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
}
