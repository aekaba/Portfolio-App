import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

@immutable
// ignore: must_be_immutable
class SocialButtons extends StatelessWidget {
  late String iconAsset;
  late bool isMail;
  late String url;
  SocialButtons(
      {Key? key,
      required this.iconAsset,
      required this.isMail,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 50,
      width: 90,
      decoration: const BoxDecoration(
        color: MyColor.mediumDark,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: MyColor.dark,
            offset: Offset(4, 4),
            blurRadius: 20,
            spreadRadius: 0.1,
          ),
          BoxShadow(
            color: MyColor.mediumSoft,
            offset: Offset(-4, -4),
            blurRadius: 20,
            spreadRadius: 0.1,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [MyColor.mediumSoft, MyColor.dark],
            stops: [0.1, 0.9]),
      ),
      child: InkWell(
        customBorder: const CircleBorder(),
        splashColor: MyColor.soft,
        child: Image.asset("assets/images/$iconAsset.png"),
        onTap: () {
          if (isMail) {
            launchUrl(Uri.parse("mailto:$url"));
          } else {
            launchUrl(Uri.parse(url));
          }
        },
      ),
    );
  }
}
