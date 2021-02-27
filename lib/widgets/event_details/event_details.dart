import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:shiny_object/widgets/blog_card_corral.dart';
import 'package:shiny_object/widgets/triangle.dart';

const String defaultEventDescription = '''# Welcome To My Blog

Everyone seems to be looking to claim their 15 minutes of fame on YouTube, Facebook, Twitter, Instagram, or _{fill in the name of your favorite social media outlet here}_. While many people want their voices to be heard or make a mark of their own these days this blog isn't my attempt at satisfying such a desire. I'm pretty low-key on the social media landscape. The purpose of this blog is to provide me with a respository for capturing and possibly sharing my comments on technology, applications and other geeky things that I find cool and interesting (i.e. shiny objects).

The primary reason I started this blog was to be able to share information on the things I'm doing with colleagues, friends and occasionally recruiters. I hope to be able to use this blog as a tool to demonstrate work that I'm doing with Swift, iOS, Android Things, Kotlin, React Native or other shiny things that have caught my attention.

When appropriate, the blog entries posted here will cross-reference associated GitHub projects that I've created to investigate various technologies. I'm creating these projects to showcase my work. If anyone else can find value in these projects please feel free to fork the project. Enjoy.

''';

class EventDetails extends StatelessWidget {
  const EventDetails({Key key, this.height}) : super(key: key);

  final double height;

  static const _defaultEventImage = 'assets/images/shinybender.png';

  // Define the decoration used for the parent event container.
  static const _parentContainerDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: const Alignment(-1.0, -1.0),
        end: const Alignment(
            1.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0x6fB5BFBD),
          const Color(0x6f08A07D),
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
  Widget build(BuildContext context) {
    // final AboutData value = Provider.of<DataManager>(context).aboutData;
    // print('Value: ${value.data}');
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      // decoration: _parentContainerDecoration,
      child: Container(
        // color: Colors.white,
        margin: EdgeInsets.fromLTRB(92, 30, 92, 30),
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
                  margin: EdgeInsets.only(left: 12, bottom: 12),
                  padding: EdgeInsets.all(28),
                  child: MarkdownBody(
                    data: defaultEventDescription,
                  ),
                ),
              ],
            ),
            BlogCardCorral(),
          ],
        ),
      ),
    );
  }
}
