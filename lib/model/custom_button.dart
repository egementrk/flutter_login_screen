import 'package:flutter/material.dart';
import 'package:login_screen/context_extension.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const CustomButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.black,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.buttonValueW,
      height: context.buttonValueH,
      child: ElevatedButton(
        //do Elevated Button
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
