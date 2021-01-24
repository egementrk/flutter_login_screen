import 'package:flutter/material.dart';
import 'package:login_screen/sign_in/sigin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(context),
        body: SiginScreen(),
      ),
    );
  }

  AppBar buildAppBar(context) => AppBar(
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            'Sign In',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        backgroundColor: Colors.transparent,
      );
}
