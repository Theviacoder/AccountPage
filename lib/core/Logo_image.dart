import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, required this.height});
  final logoURL =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Android_O_Preview_Logo.png/1024px-Android_O_Preview_Logo.png";
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(logoURL, height: height, fit: BoxFit.cover);
  }
}
