//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/widgets.dart';

import '../src/ui/components/footer.dart';

class WebPage extends StatelessWidget {
  final Widget? child;

  const WebPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: key,
      primary: false,
      slivers: <Widget>[
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(child: child),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}
