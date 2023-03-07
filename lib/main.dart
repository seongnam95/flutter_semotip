import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semotip/app.dart';
import 'package:semotip/screens/login/login_screen.dart';

void main() => runApp(const SemoApp());

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
        child: SafeArea(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          ),
        ));
  }
}
