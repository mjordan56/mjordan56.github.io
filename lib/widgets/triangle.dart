import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  Triangle({@required this.height, @required this.width, this.color})
      : assert(height > 0.0 && width > 0.0);

  final double height;

  final double width;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClipper(),
      child: Container(
        color: color ?? Theme.of(context).accentColor,
        height: height,
        width: width,
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) => Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(0, 0);

  @override
  bool shouldReclip(oldClipper) => false;
}
