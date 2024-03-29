import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/src/ui/theme/app_color.dart';

class Triangle extends StatelessWidget {
  const Triangle({
    Key? key,
    required this.height,
    required this.width,
    this.color,
    this.rotation = 0.0,
  })  : assert(height > 0.0 && width > 0.0),
        super(key: key);

  final Color? color;

  final double height;

  final double width;

  final double rotation;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: ClipPath(
        clipper: TriangleClipper(),
        child: Container(
          color: color ?? AppColor.primary,
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
