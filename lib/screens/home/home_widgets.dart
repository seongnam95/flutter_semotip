import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Image.asset('assets/images/logo.png', width: 110),
      actions: const [
        IconButton(
          tooltip: 'Notification',
          icon: Icon(Icons.notifications_outlined),
          iconSize: 26,
          onPressed: null,
        ),
      ],
    );
  }
}