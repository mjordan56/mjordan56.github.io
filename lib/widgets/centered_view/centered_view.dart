import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  final double maxWidth;

  const CenteredView({Key key, this.child, double width})
      : maxWidth = width ?? 1200,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
