import 'package:flutter/material.dart';
import 'package:login_screen/components/context_extension.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.black),
            )),
        SizedBox(
          width: context.widthMedium,
        )
      ],
    );
  }
}
