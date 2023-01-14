import 'package:flutter/material.dart';
import '../product/constants.dart';

class Home extends StatelessWidget with _ColorUtility, _PaddingUtility {
  Home({super.key});
  final title = "Leafboard";
  final subtitle = "A platform build for a new way of working";
  final buttontext = "Get Started";
  final buttonpadding = const EdgeInsets.symmetric(horizontal: 75, vertical: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _logoHeight / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: RadiusUtility(),
                    ),
                  ),
                ),
                logo(logoWidth_height: _logoHeight, whiteColor: whiteColor)
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogoTitle(
                    title: title,
                    subtitle: subtitle,
                  ),
                  Button(
                    bgColor: greenColor,
                    buttonpadding: buttonpadding,
                    buttontext: buttontext,
                    TextColor: blackColor,
                    onpressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BorderRadius RadiusUtility() {
    return const BorderRadius.only(
      bottomLeft: Radius.circular(100),
      bottomRight: Radius.circular(100),
    );
  }
}

class _PaddingUtility {
  final _logoHeight = 150.0;
}

class _ColorUtility {
  final Color blackColor = Colors.black87;
  final Color whiteColor = Colors.white;
  final Color greenColor = Colors.greenAccent;
}
