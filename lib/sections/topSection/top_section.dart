import 'dart:ui';

import 'package:portfolio/constants.dart';
import 'package:flutter/material.dart';

import 'components/glass_content.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/blog-bg.jpg"))),
      child: Container(
        margin: EdgeInsets.only(top: KDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              top: 0,
              child: PersonPic(),
            ),
            const Positioned(bottom: 0, child: Menu()),
          ],
        ),
      ),
    );
  }
}
