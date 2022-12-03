import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/service.dart';
import 'package:portfolio/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: KDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(children: [
        const ServiceTitle(
          color: Color(0XFFFF0000),
          title: 'Service Offerings',
          subtitle: 'My Strong Arenas',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              services.length, (index) => ServiceCard(index: index)),
        )
      ]),
    );
  }
}
