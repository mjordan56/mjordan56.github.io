import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/widgets/blog_card_corral.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[400],
      child: Column(
        children: [
          const Text('Posts View'),
          BlogCardCorral(),
        ],
      ),
    );
  }
}
