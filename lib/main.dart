import 'package:flutter/material.dart';
import 'package:loginregister/constant/color.dart';
import 'package:loginregister/page/LoginPage.dart';
import 'page/home.dart';

void main() {
  runApp(const LoginRegisterPage());
}

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          textTheme: const TextTheme(
              headline3: TextStyle(color: blackColor, fontWeight: FontWeight.bold),
              headline4: TextStyle(color: blackColor, fontWeight: FontWeight.bold),
              headline5: TextStyle(color: blackColor, fontWeight: FontWeight.bold),
              subtitle1: TextStyle(color: blackColor, fontWeight: FontWeight.w700)),
          appBarTheme: const AppBarTheme(
            backgroundColor: whiteColor,
            elevation: 0,
          )),
      home: LoginPage(),
    );
  }
}
