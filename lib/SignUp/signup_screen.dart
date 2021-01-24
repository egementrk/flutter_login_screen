import 'package:flutter/material.dart';
import 'package:login_screen/SignUp/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Create Account',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SignupBody(size: size),
    ));
  }
}
