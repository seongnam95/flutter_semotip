import 'package:flutter/material.dart';
import 'package:semotip/screens/home/home_views.dart';
import 'package:semotip/screens/home/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
                    icon: Icon(Icons.notifications_outlined, color: Colors.black54,),
                    iconSize: 28,
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
    );
  }
}

