import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen/context_extension.dart';

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
    return Container(
      height: context.fieldValue,
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
