import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen/components/context_extension.dart';

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
        margin: EdgeInsets.all(context.widthLow),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: HexColor("#B3B7CA"), width: 2),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: size.height * 0.03,
          width: context.widthLow,
        ),
      ),
    );
  }
}
