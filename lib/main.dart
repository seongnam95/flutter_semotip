import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semotip/App.dart';

void main() => runApp(SemoApp());

class SemoApp extends StatefulWidget {
  const SemoApp({Key? key}) : super(key: key);
  @override
  State<SemoApp> createState() => _SemoApp();
}

class _SemoApp extends State<SemoApp> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
      ),
    );
  }
}

