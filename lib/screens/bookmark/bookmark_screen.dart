import 'package:flutter/material.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreen();
}

class _BookmarkScreen extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: const Text('Bookmark'),
    );
  }
}