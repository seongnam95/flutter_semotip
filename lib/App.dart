import 'package:flutter/material.dart';
import 'package:semotip/screens/home/home_screen.dart';
import 'package:semotip/screens/bookmark/bookmark_screen.dart';
import 'package:semotip/screens/search/search_screen.dart';
import 'package:semotip/screens/profile/profile_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const BookmarkScreen(),
    const SearchScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            activeIcon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

  PreferredSizeWidget _getAppBar(int index) {
    const TextStyle titleStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54);

    if (index == 0) {
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png', width: 110,),
        actions: const [
          IconButton(
            tooltip: 'Notification',
            icon: Icon(Icons.notifications_outlined),
            iconSize: 26,
            onPressed: null,
          ),
        ],
      );

    } else if (index == 1) {
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: titleStyle,
        title: const Text('북마크'),
        actions: const [
          IconButton(
            tooltip: 'Search',
            icon: Icon(Icons.search_outlined),
            iconSize: 26,
            onPressed: null,
          ),
        ],
      );

    } else if (index == 2) {
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: titleStyle,
        title: const Text('알림'),
        actions: const [
          IconButton(
            tooltip: 'Setting',
            icon: Icon(Icons.settings_outlined),
            iconSize: 26,
            onPressed: null,
          ),
        ],
      );

    } else {
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: titleStyle,
        title: const Text('프로필'),

      );
    }
  }
}