import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentWork.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final Function() press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) KDefaultShadow]),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWorks[widget.index].category.toUpperCase()),
                  SizedBox(
                    height: KDefaultPadding / 2,
                  ),
                  Text(
                    recentWorks[widget.index].tilte,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(height: 1.5),
                  ),
                  SizedBox(
                    height: KDefaultPadding,
                  ),
                  Text(
                    'View Details',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
