import 'package:flutter/material.dart';
import 'package:shiny_object/locator.dart';
import 'package:shiny_object/routing/router.dart';
import 'package:shiny_object/services/navigation_service.dart';
import 'package:shiny_object/views/about/about_view.dart';
import 'package:shiny_object/views/home/home_content_desktop.dart';
import 'package:shiny_object/views/posts/posts_view.dart';
import 'package:shiny_object/widgets/centered_view/centered_view.dart';
import 'package:shiny_object/widgets/navigation_bar/navigation_bar.dart';
import 'package:shiny_object/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
          body: CenteredView(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: TabBarView(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) =>
                            SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: HomeContentDesktop(),
                          ),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) =>
                            SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: PostsView(),
                          ),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) =>
                            SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: AboutView(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
