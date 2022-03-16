//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shiny_object_affliction/widgets/web_page.dart';

import '../../src/providers/providers.dart';
import '../../src/ui/ui.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  static const _tabLabels = ['Home', 'Posts', 'About'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabLabels.length,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      actions: [
                        ThemeToggleButton(provider: themeModeProvider),
                      ],
                      pinned: true,
                      flexibleSpace: Center(
                        child: TabBar(
                            isScrollable: true,
                            tabs: _tabLabels
                                .map((label) => Tab(height: 26, text: label))
                                .toList()),
                      ),
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: <Widget>[
                  WebPage(
                      key: PageStorageKey<String>('Home'), child: HomeView()),
                  WebPage(
                      key: PageStorageKey<String>('Posts'), child: PostsView()),
                  WebPage(
                      key: PageStorageKey<String>('About'),
                      child: AboutContentDesktop()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
