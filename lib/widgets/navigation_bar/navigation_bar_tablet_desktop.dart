import 'package:flutter/material.dart';

class NavigationBarTabletDesktop extends StatefulWidget {
  const NavigationBarTabletDesktop({Key? key, this.tabController})
      : super(key: key);

  final TabController? tabController;

  @override
  _NavigationBarTabletDesktopState createState() =>
      _NavigationBarTabletDesktopState();
}

class _NavigationBarTabletDesktopState extends State<NavigationBarTabletDesktop>
    with SingleTickerProviderStateMixin {
  late final TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = widget.tabController;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0a0909),
      padding: const EdgeInsets.only(left: 92, top: 0, right: 92, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          // NavBarLogo(),
          // Flexible(child:
          Align(
            alignment: Alignment.bottomRight,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: const EdgeInsets.only(bottom: 8),
              isScrollable: true,
              // labelPadding: EdgeInsets.only(left: 0, right: 0),
              labelStyle: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              tabs: const <Widget>[
                Tab(text: 'Home'),
                Tab(text: 'Posts'),
                Tab(text: 'About'),
              ],
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
