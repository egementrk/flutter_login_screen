import 'package:flutter/material.dart';
import 'package:login_screen/model/custom_button.dart';
import 'package:login_screen/model/custom_text_field.dart';
import 'package:login_screen/model/or_divider.dart';
import 'package:login_screen/sign_in/social_icons.dart';
import 'package:login_screen/context_extension.dart';

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
          padding: context.paddingHigh,
          child: Column(
            children: [
              CustomTextField(
                labelText: "Email Address",
                preIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: context.mediumValue,
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
                    width: context.sizedBoxMedium,
                  )
                ],
              ),
              SizedBox(
                height: context.mediumValue,
              ),
              CustomButton(
                text: "Sıgn In",
              ),
              OrDivider(),
              IconPart(size: size),
              Padding(
                padding: context.paddingLow,
                child: Text(
                  "Sign Up",
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
