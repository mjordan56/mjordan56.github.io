import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[400],
      child: const Center(
        child: Text('Posts View'),
      ),
    );
  }
}
