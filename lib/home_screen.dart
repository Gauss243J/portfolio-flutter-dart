import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/about/about_section.dart';
import 'package:portfolio/sections/contact/contact_section.dart';
import 'package:portfolio/sections/feedback/feedback_section.dart';
import 'package:portfolio/sections/recent_work/recent_dart_section.dart';
import 'package:portfolio/sections/topSection/top_section.dart';
import 'package:portfolio/service/service_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(
              height: KDefaultPadding * 2,
            ),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(
              height: KDefaultPadding,
            ),
            ContactSection(),
            SizedBox(
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
