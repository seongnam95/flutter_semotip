import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32.5),
            child: Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black54,
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
              ),
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
