import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shiny_object/model/about_data.dart';
import 'package:shiny_object/model/data_manager.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';
import 'package:shiny_object/widgets/blog_card_corral.dart';
import 'package:shiny_object/widgets/triangle.dart';

const String defaultEventDescription = '''# Welcome To My Blog

Everyone seems to be looking to claim their 15 minutes of fame on YouTube, Facebook, Twitter, Instagram, or _{fill in the name of your favorite social media outlet here}_. While many people want their voices to be heard or make a mark of their own these days this blog isn't my attempt at satisfying such a desire. I'm pretty low-key on the social media landscape. The purpose of this blog is to provide me with a respository for capturing and possibly sharing my comments on technology, applications and other geeky things that I find cool and interesting (i.e. shiny objects).

The primary reason I started this blog was to be able to share information on the things I'm doing with colleagues, friends and occasionally recruiters. I hope to be able to use this blog as a tool to demonstrate work that I'm doing with Swift, iOS, Android Things, Kotlin, React Native or other shiny things that have caught my attention.

When appropriate, the blog entries posted here will cross-reference associated GitHub projects that I've created to investigate various technologies. I'm creating these projects to showcase my work. If anyone else can find value in these projects please feel free to fork the project. Enjoy.

''';
// Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sagittis vitae est at vestibulum. Aliquam at velit in tellus egestas egestas. Etiam vitae ipsum nec mauris facilisis sagittis ac ac magna. In rutrum iaculis purus, eget aliquet mi ullamcorper nec. Nullam dapibus dictum sollicitudin. Proin eu rhoncus dolor. Maecenas iaculis tempor convallis. Integer sed enim congue, porta massa in, lobortis felis. Nulla facilisi. Etiam non nunc iaculis, vehicula neque eget, accumsan magna. Vestibulum et dictum lorem. In vel metus eu tortor eleifend accumsan non eu augue. Sed nec leo eget nunc imperdiet pretium vel non mauris. Fusce suscipit congue tempor. Quisque at ex gravida, mollis dui in, luctus nunc. Integer tincidunt magna viverra lacus molestie, id molestie ipsum malesuada.

// Morbi iaculis, massa eu viverra accumsan, risus risus porttitor sapien, vel sagittis ipsum leo sed felis. Maecenas molestie augue nec auctor posuere. Proin elit tortor, vulputate at bibendum vitae, egestas in ligula. Nullam tempor ex non lectus aliquam vehicula. Pellentesque elit nisi, bibendum at neque sit amet, ullamcorper interdum ante. Quisque id risus in dui imperdiet dapibus a vitae libero. Sed auctor sodales dignissim. In aliquet quis leo id dapibus. Mauris id sem vitae felis imperdiet tincidunt id ac felis. Aenean vel convallis sem. Sed risus enim, euismod ut libero nec, porta varius elit.

// Praesent ornare rutrum risus, dictum elementum nulla efficitur eget. Duis elementum, tellus vitae commodo faucibus, diam leo fermentum mi, quis pellentesque urna nulla vel diam. Mauris auctor augue nec libero molestie, in tincidunt leo gravida. Nullam egestas quam vel ornare maximus. Integer eu iaculis tortor. Proin cursus at felis eu pulvinar. Quisque vel nibh a elit tempor consectetur. Sed blandit metus vel imperdiet placerat. Donec ut sem non urna egestas auctor. Pellentesque pharetra sapien ac massa sagittis vehicula. Maecenas eget ipsum urna.

// Pellentesque venenatis velit ipsum, eu semper nisi fermentum molestie. Phasellus arcu elit, luctus eu tortor vitae, elementum varius libero. Etiam consectetur ullamcorper metus et gravida. Morbi id nunc volutpat, ultrices tellus sit amet, convallis justo. Nullam mollis arcu in ipsum tincidunt ultricies. Curabitur id nunc molestie, fermentum metus id, volutpat nunc. Donec maximus augue magna, eget rhoncus orci pretium in. Vestibulum ac risus nibh. Praesent in metus posuere, euismod enim nec, maximus ante. Maecenas sit amet urna a est ultrices viverra. Sed malesuada nulla quis enim facilisis, vitae tempus lorem lacinia. Duis ac dapibus magna.

// Nunc luctus sem vel velit iaculis, eget mattis turpis mollis. Quisque suscipit luctus lectus. Donec sed diam viverra, tristique magna et, ultrices risus. Sed malesuada metus ligula. Maecenas eget auctor massa, ut feugiat ipsum. Suspendisse potenti. Fusce laoreet leo sed faucibus aliquam.

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
