import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/src/providers/providers.dart';
import 'package:shiny_object_affliction/src/ui/theme/app_theme.dart';
import 'package:shiny_object_affliction/widgets/blog_card_corral.dart';
import 'package:shiny_object_affliction/widgets/triangle.dart';

class EventDetails extends ConsumerWidget {
  const EventDetails({Key? key, this.height = 20.0}) : super(key: key);

  final double? height;

  static const _defaultEventImage = 'assets/images/shinybender.png';

  // Define the decoration used for the parent event container.
  static const _parentContainerDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment(-1.0, -1.0),
        end: Alignment(1.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          Color(0x6fB5BFBD),
          Color(0x6f08A07D),
        ], // whitish to gray
        stops: [
          0.0,
          1.0
        ]),
  );

  // Define the decoration used for the event image.
  static const _imageDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0x2f000000),
        blurRadius: 16,
        offset: Offset(8, 8),
      )
    ],
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcome = ref.watch(welcomeMessageProvider);
    return welcome.when(
        data: (String welcome) => WelcomeMessage(message: welcome),
        error: (_, __) => Placeholder(),
        loading: () => CircularProgressIndicator());
    // final AboutData value = Provider.of<DataManager>(context).aboutData;
    // print('Value: ${value.data}');
  }
}

class WelcomeMessage extends StatelessWidget {
  final String message;
  const WelcomeMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      // decoration: _parentContainerDecoration,
      child: Container(
        // color: Colors.white,
        margin: const EdgeInsets.fromLTRB(92, 30, 92, 30),
        // padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: <Widget>[
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: LayoutBuilder(
                      builder: (context, contraints) {
                        final length =
                            min(contraints.maxHeight, contraints.maxWidth) *
                                0.65;
                        return Triangle(
                          height: length,
                          width: length,
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  margin: const EdgeInsets.only(left: 12, bottom: 12),
                  padding: const EdgeInsets.all(28),
                  child: MarkdownBody(
                    data: message,
                    styleSheet:
                        MarkdownStyleSheet.fromTheme(AppTheme.dark.copyWith(
                      textTheme: AppTheme.textTheme,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
