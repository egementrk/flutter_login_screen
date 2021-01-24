import 'package:flutter/material.dart';
import 'package:login_screen/model/social_icons.dart';

class IconPart extends StatelessWidget {
  const IconPart({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcons(
            iconSrc: "assets/icons/facebook.svg", press: () {}, size: size),
        SocialIcons(
            iconSrc: "assets/icons/google.svg", press: () {}, size: size),
        SocialIcons(
            iconSrc: "assets/icons/apple.svg", press: () {}, size: size),
      ],
    );
  }
}
