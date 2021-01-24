import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrDivider extends StatelessWidget {
  final double dividerHeight, dividerWidth;

  const OrDivider({
    Key key,
    this.dividerHeight,
    this.dividerWidth,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: dividerWidth, vertical: dividerHeight),
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
