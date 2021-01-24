import 'package:flutter/material.dart';
import 'package:login_screen/main.dart';

class AlreadyRegistered extends StatelessWidget {
  const AlreadyRegistered({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already registered?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyApp();
                },
              ),
            );
          },
          child: Text(
            "Sign In.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
