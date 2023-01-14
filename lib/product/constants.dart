import 'package:flutter/material.dart';
import 'package:loginregister/constant/color.dart';
import '../core/Logo_image.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;

  final String subtitle;
  final edgeInsets = const EdgeInsets.symmetric(vertical: 30);

  @override
  Widget build(BuildContext context) {
    var headline3 = Theme.of(context).textTheme.headline3;
    return Padding(
      padding: edgeInsets,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: headline3,
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}

class logo extends StatelessWidget with _PaddingUtility {
  logo({
    Key? key,
    required this.logoWidth_height,
    required this.whiteColor,
  }) : super(key: key);

  final double logoWidth_height;
  final Color whiteColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: _logoHeight,
      width: _logoWidth,
      bottom: 0,
      child: Card(
        elevation: 0,
        shape: const CircleBorder(),
        color: whiteColor,
        child: const LogoImage(
          height: 100,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.bgColor,
    required this.buttonpadding,
    required this.buttontext,
    required this.TextColor,
    required this.onpressed,
  }) : super(key: key);

  final Color bgColor;
  final EdgeInsets buttonpadding;
  final String buttontext;
  final Color TextColor;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(backgroundColor: greenColor, shape: const StadiumBorder()),
        child: Padding(
          padding: buttonpadding,
          child: Center(
            child: Text(
              buttontext,
              style: const TextStyle(color: blackColor),
            ),
          ),
        ));
  }
}

BorderRadius RadiusUtility() {
  return const BorderRadius.only(
    bottomLeft: Radius.circular(100),
    bottomRight: Radius.circular(100),
  );
}

class _PaddingUtility {
  final _logoWidth = 150.0;
  final _logoHeight = 150.0;
}
