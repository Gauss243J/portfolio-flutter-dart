import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: KDefaultPadding * 2,
        ),
        Image.asset(
          'assets/images/instagram-logo.png',
          height: 50,
          width: 50,
        )
      ],
    );
  }
}
