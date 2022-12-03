import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/default_button.dart';
import 'package:portfolio/components/my_outline_button.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/about/components/about_section_text.dart';
import 'package:portfolio/sections/about/components/experience_card.dart';

import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: KDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                    text:
                        'Waiting for connection from debug service on Edge Waiting for connection from debug service on EdgeWaiting for connection from debug service on Edge on Edge Waiting for connection from debug service on EdgeWaiting for connection from debug service on Edge'),
              ),
              ExperienceCard(numOfExp: '7'),
              Expanded(
                child: AboutSectionText(
                    text:
                        'Waiting for connection from debug service on Edge Waiting for connection from debug service on EdgeWaiting for connection from debug service on Edge on Edge Waiting for connection from debug service on EdgeWaiting for connection from debug service on Edge'),
              )
            ],
          ),
          const SizedBox(height: KDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: 'assets/logo/audience.png',
                text: 'Hire Me',
                press: () {},
              ),
              SizedBox(
                width: KDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: 'assets/logo/pdfIcon.png',
                text: 'Download CV',
                press: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
