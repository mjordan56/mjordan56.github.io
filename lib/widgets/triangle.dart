import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  Triangle({
    required this.height,
    required this.width,
    this.color,
    this.rotation = 0.0,
  }) : assert(height > 0.0 && width > 0.0);

  final Color? color;

  final double height;

  final double width;

  final double rotation;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: this.rotation,
      child: ClipPath(
        clipper: TriangleClipper(),
        child: Container(
          color: color ?? Theme.of(context).colorScheme.secondary,
          height: height,
          width: width,
        ),
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
