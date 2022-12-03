import 'package:flutter/material.dart';
import 'package:portfolio/components/default_button.dart';
import 'package:portfolio/components/hireme_card.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentWork.dart';
import 'package:portfolio/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: KDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
          color: Color(0XFFF7E8FF).withOpacity(0.3),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/portfolio4.jpg"))),

      child: Column(
        children: [
          Transform.translate(offset: Offset(0, -80), child: HireMeCard()),
          const ServiceTitle(
            title: "Recent Woorks",
            subtitle: "My Strong Arenas",
            color: Color(0XFFFFB100),
          ),
          const SizedBox(
            height: KDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: KDefaultPadding,
              runSpacing: KDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          ),
          const SizedBox(
            height: KDefaultPadding * 5,
          ),
        ],
      ),
    );
  }
}
