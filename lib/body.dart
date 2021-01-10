import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen/custom_button.dart';
import 'package:login_screen/custom_text_field.dart';
import 'package:login_screen/or_divider.dart';

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
                children: [SocialIcons(size: size)],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
    @required this.size,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  final Size size;
  final String iconSrc;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: HexColor("#B3B7CA"), width: 2),
          shape: BoxShape.circle),
      child: SvgPicture.asset(
        "assets/icons/facebook.svg",
        height: size.height * 0.03,
        width: size.width * 0.03,
      ),
      // child: SvgPicture.asset(
      //   "assets/icons/facebook.svg",
      //   height: 20,
      //   width: 20,
      // ),
    );
  }
}
