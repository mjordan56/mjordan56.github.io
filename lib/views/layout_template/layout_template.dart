import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/src/providers/providers.dart';
import 'package:shiny_object_affliction/src/widgets/theme_toggle_button.dart';
import 'package:shiny_object_affliction/views/about/about_content_desktop.dart';
import 'package:shiny_object_affliction/views/home/home_content_desktop.dart';
import 'package:shiny_object_affliction/views/home/home_view.dart';
import 'package:shiny_object_affliction/views/posts/posts_view.dart';
import 'package:shiny_object_affliction/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shiny_object_affliction/widgets/web_page.dart';

final tabLabels = ['Home', 'Posts', 'About'];

class LayoutTemplate extends ConsumerWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          appBar: AppBar(
            actions: [
              ThemeToggleButton(provider: themeModeProvider),
            ],
            flexibleSpace: Center(
              child: TabBar(
                  isScrollable: true,
                  tabs: tabLabels
                      .map((label) => Tab(height: 26, text: label))
                      .toList()),
            ),
          ),
          drawer: sizingInformation.isMobile ? const NavigationDrawer() : null,
          body: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  children: [
                    const WebPage(child: HomeView()),
                    const WebPage(child: PostsView()),
                    WebPage(child: AboutContentDesktop()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
