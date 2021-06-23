import 'package:flutter/material.dart';
import 'package:login_screen/sign_up/signup_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Not registered yet?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen(
                    size: size,
                  );
                },
              ),
            );
          },
          child: Text(
            "Create Account.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
