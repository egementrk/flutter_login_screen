import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
    @required this.size,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  final Size size;
  final String iconSrc;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(size.width * 0.03),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: HexColor("#B3B7CA"), width: 2),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: size.height * 0.03,
          width: size.width * 0.03,
        ),
        // child: SvgPicture.asset(
        //   "assets/icons/facebook.svg",
        //   height: 20,
        //   width: 20,
        // ),
      ),
    );
  }
}
