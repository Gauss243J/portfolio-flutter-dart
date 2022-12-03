import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/feedback.dart';
import 'package:portfolio/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const ServiceTitle(
            title: "Feedback Received",
            subtitle: "Client's testimonials that inspired me a lot",
            color: Color(0XFF00B1FF),
          ),
          SizedBox(
            height: KDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                feedbacks.length, (index) => FeedbackCard(index: index)),
          ),
        ],
      ),
    );
  }
}
