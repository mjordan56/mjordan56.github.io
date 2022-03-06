import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/src/providers/providers.dart';
import 'package:shiny_object_affliction/views/about/about_content_desktop.dart';
import 'package:shiny_object_affliction/views/home/home_content_desktop.dart';
import 'package:shiny_object_affliction/views/posts/posts_view.dart';
// import 'package:shiny_object_affliction/widgets/navigation_bar/navigation_bar.dart';
import 'package:shiny_object_affliction/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shiny_object_affliction/widgets/web_page.dart';

class LayoutTemplate extends ConsumerWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final brightness = MediaQuery.platformBrightnessOf(context);

    return DefaultTabController(
      length: 3,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          appBar: AppBar(actions: [
            IconButton(
                onPressed: () {
                  final currentThemeMode = ref.read(themeModeProvider);
                  ThemeMode newThemeMode;
                  if (currentThemeMode == ThemeMode.system) {
                    newThemeMode = brightness == Brightness.dark
                        ? ThemeMode.light
                        : ThemeMode.dark;
                  } else {
                    newThemeMode = currentThemeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark;
                  }
                  ref.read(themeModeProvider.state).state = newThemeMode;
                },
                icon: themeMode == ThemeMode.dark ||
                        (themeMode == ThemeMode.system &&
                            brightness == Brightness.dark)
                    ? const Icon(
                        Icons.sunny,
                        size: 16,
                      )
                    : const Icon(
                        Icons.nightlight_round_outlined,
                        size: 16,
                      ))
          ]),
          drawer: sizingInformation.isMobile ? const NavigationDrawer() : null,
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
