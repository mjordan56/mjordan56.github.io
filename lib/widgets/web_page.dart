import 'package:flutter/widgets.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            // minWidth: MediaQuery.of(context).size.width,
            // minHeight: constraints.maxHeight,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: child,
        ),
      ),
    );
  }
}
