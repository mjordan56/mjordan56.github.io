import 'package:flutter/material.dart';

class BlogCardCorral extends StatelessWidget {
  final _headerTextStyle =
      const TextStyle(color: Colors.white, fontSize: 36, fontFamily: 'Lato');

  final _decoration = BoxDecoration(
      color: const Color(0x0dffffff), borderRadius: BorderRadius.circular(6));

  BlogCardCorral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      decoration: _decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 28, bottom: 28),
            child: Text(
              'Blog posts',
              style: _headerTextStyle,
            ),
          ),
          // Placeholder(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 800),
            child: GridView.count(
              primary: false,
              childAspectRatio: 2,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                for (var i in List.generate(16, (index) => index))
                  BlogPostCard(
                    index: i + 1,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlogPostCard extends StatelessWidget {
  BlogPostCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).cardTheme.color,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Android Things First Kotlin Device $index',
            style: const TextStyle(
                fontFamily: 'Lato', fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Text(
              'Now is the time for all good men and women to come to the aid of their party.',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
