import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen/custom_button.dart';
import 'package:login_screen/custom_text_field.dart';
import 'package:login_screen/or_divider.dart';
import 'package:login_screen/social_icons.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Email Address",
                preIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomTextField(
                labelText: "Password",
                preIcon: Icon(Icons.lock_outlined),
              ),
              //Padding(padding: null),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: size.width * 0.04,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomButton(
                text: "Sıgn In",
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcons(
                      iconSrc: "assets/icons/facebook.svg",
                      press: () {},
                      size: size),
                  SocialIcons(
                      iconSrc: "assets/icons/google.svg",
                      press: () {},
                      size: size),
                  SocialIcons(
                      iconSrc: "assets/icons/apple.svg",
                      press: () {},
                      size: size),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
