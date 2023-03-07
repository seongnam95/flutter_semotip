import 'package:flutter/material.dart';
import 'package:semotip/screens/home/home_views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  pinned: false,
                  backgroundColor: Colors.white,
                  title: Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 110,
                  ),
                  actions: [
                    IconButton(
                      tooltip: 'Notification',
                      icon: Icon(Icons.notifications_outlined),
                      iconSize: 26,
                      onPressed: null,
                    ),
                  ],
                ),
                const SliverPersistentHeader(
                  pinned: true,
                  delegate: TabBarDelegate(),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                AllPostList(),
                AllPostList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  const TabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: TabBar(
        tabs: [
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: const Text("전체", style: TextStyle(fontSize: 18)),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: const Text("팔로우", style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
        isScrollable: true,
        indicatorWeight: 2,
        labelPadding: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}