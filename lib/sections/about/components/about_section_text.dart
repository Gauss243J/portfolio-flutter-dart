import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
      ),
    );
  }
}