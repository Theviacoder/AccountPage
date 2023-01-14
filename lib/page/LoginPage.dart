import 'package:flutter/material.dart';
import 'package:loginregister/core/Logo_image.dart';
import 'package:loginregister/constant/color.dart';
import 'package:loginregister/product/constants.dart';

class LoginPage extends StatelessWidget with _PaddingUtility {
  LoginPage({super.key});
  final title = "Leafboard";
  final subtitle = "Work without limits";
  final email = "Your email address";
  final emailhintText = "youremail@gmail.com";
  final password = "Choose a password";
  final passwordhintText = "min 8 characters";
  final buttontext = "Contiune";
  final buttonpadding = const EdgeInsets.symmetric(vertical: 15);
  final pagePadding = const EdgeInsets.symmetric(horizontal: 10);
  final textfieldPadding = const EdgeInsets.symmetric(horizontal: 5);
  final formTitlePadding = const EdgeInsets.symmetric(horizontal: 5, vertical: 10);
  final pageVerticalPadding = MainAxisAlignment.start;
  final pageHorizantalPaddig = CrossAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    var buttontext = "Contiune";
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: pageHorizantalPaddig,
            mainAxisAlignment: pageVerticalPadding,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const LogoImage(height: 50),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    height(),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: pageVerticalPadding,
                  crossAxisAlignment: pageHorizantalPaddig,
                  children: [
                    //e-mail part
                    FormTitle(formTitlePadding: formTitlePadding, email: email),
                    Padding(
                      padding: textfieldPadding,
                      child: TextField(
                        decoration: textfieldStyle(),
                      ),
                    ),
                    height(),
                    //password part
                    FormTitle(formTitlePadding: formTitlePadding, email: password),
                    Padding(
                      padding: textfieldPadding,
                      child: TextField(
                        obscuringCharacter: '*',
                        obscureText: true,
                        decoration: textfieldStyle(),
                      ),
                    ),
                    height(),
                    Button(
                      bgColor: blackColor,
                      buttonpadding: buttonpadding,
                      buttontext: buttontext,
                      TextColor: blackColor,
                      onpressed: () {},
                    ),
                    height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Expanded(child: Divider()),
                        Text("or", style: hintTextStyle()),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    height(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox height() => const SizedBox(height: 20);

  InputDecoration textfieldStyle() {
    return InputDecoration(
      hintText: emailhintText,
      hintStyle: hintTextStyle(),
      border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: greyColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }

  TextStyle hintTextStyle() {
    return const TextStyle(
      color: greyColor,
    );
  }
}

class FormTitle extends StatelessWidget {
  const FormTitle({
    Key? key,
    required this.formTitlePadding,
    required this.email,
  }) : super(key: key);

  final EdgeInsets formTitlePadding;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: formTitlePadding,
      child: Text(
        email,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class _PaddingUtility {
  final _logoHeight = 75.0;
}
