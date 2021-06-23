import 'package:flutter/material.dart';
import 'package:login_screen/components/context_extension.dart';
import 'package:login_screen/model/custom_button.dart';
import 'package:login_screen/model/custom_text_field.dart';
import 'package:login_screen/model/or_divider.dart';
import 'package:login_screen/components/icon_part.dart';
import 'package:login_screen/sign_up/already_registered.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: context.paddingLow,
            child: Column(
              children: [
                CustomTextField(
                  labelText: "First Name",
                  preIcon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: context.heightLow,
                ),
                CustomTextField(
                  labelText: "Last Name",
                  preIcon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: context.heightLow,
                ),
                CustomTextField(
                  labelText: "Username",
                  preIcon: Icon(Icons.face),
                ),
                SizedBox(
                  height: context.heightLow,
                ),
                CustomTextField(
                  labelText: "Email Address",
                  preIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(
                  height: context.heightLow,
                ),
                CustomTextField(
                  labelText: "Password",
                  preIcon: Icon(Icons.lock_outlined),
                ),
                SizedBox(
                  height: context.heightLow,
                ),
                CustomButton(
                  text: "Create Account",
                ),
                OrDivider(
                  dividerHeight: context.heightLow,
                  dividerWidth: context.widthMedium,
                ),
                IconPart(size: size),
                AlreadyRegistered()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
