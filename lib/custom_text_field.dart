import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.labelText,
    this.preIcon,
  }) : super(key: key);
  final String labelText;
  final Icon preIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      child: TextField(
        //autocorrect: true,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            hintText: labelText,
            hintStyle: TextStyle(color: HexColor("#707070")),
            filled: true,
            prefixIcon: preIcon,
            fillColor: HexColor("#F3F4F8")),
      ),
    );
  }
}
