import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2.5,
      color: MyColor.mediumDark,
    );
  }
}
