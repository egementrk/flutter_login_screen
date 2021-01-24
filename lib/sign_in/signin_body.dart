import 'package:flutter/material.dart';
import 'package:login_screen/model/custom_button.dart';
import 'package:login_screen/model/custom_text_field.dart';
import 'package:login_screen/model/or_divider.dart';
import 'package:login_screen/components/icon_part.dart';
import 'package:login_screen/components/context_extension.dart';
import 'package:login_screen/sign_in/create_account.dart';
import 'package:login_screen/sign_in/forgot_password.dart';

class SigninBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: context.paddingLow,
          child: Column(
            children: [
              CustomTextField(
                labelText: "Email Address",
                preIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: context.heightMedium,
              ),
              CustomTextField(
                labelText: "Password",
                preIcon: Icon(Icons.lock_outlined),
              ),
              //Padding(padding: null),
              ForgotPassword(),
              SizedBox(
                height: context.heightMedium,
              ),
              CustomButton(
                text: "Sıgn In",
              ),
              OrDivider(
                dividerHeight: context.heightMedium,
                dividerWidth: context.widthMedium,
              ),
              IconPart(size: size),
              SizedBox(
                height: context.heightMedium,
              ),
              CreateAccount(size: size)
            ],
          ),
        ),
      ],
    );
  }
}
