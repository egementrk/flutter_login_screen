import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.06),
      width: size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: TextStyle(color: HexColor("#9498AE")),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
