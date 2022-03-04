import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/views/about/about_content_desktop.dart';
import 'package:shiny_object_affliction/views/home/home_content_desktop.dart';
import 'package:shiny_object_affliction/views/posts/posts_view.dart';
// import 'package:shiny_object_affliction/widgets/navigation_bar/navigation_bar.dart';
import 'package:shiny_object_affliction/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shiny_object_affliction/widgets/web_page.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
          body: Column(
            children: <Widget>[
              const TabBar(tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'About',
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    const WebPage(child: HomeContentDesktop()),
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
