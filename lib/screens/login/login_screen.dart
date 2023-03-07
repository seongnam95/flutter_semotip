import 'package:flutter/material.dart';
import 'package:semotip/screens/login/login_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SocialButton(
                imagePath: 'assets/images/logo.png',
                text: 'Kakao로 시작하기',
                textColor: const Color.fromRGBO(0, 0, 0, 0.85),
                backgroundColor: const Color(0xFFFEE500),
                onPressed: () {},
              ),
              const SizedBox(
                height: 12,
              ),
              SocialButton(
                imagePath: 'assets/images/logo.png',
                text: 'Apple로 계속하기',
                textColor: Colors.white,
                backgroundColor: Colors.black87,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
