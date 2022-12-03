import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: KDefaultPadding),
      padding: EdgeInsets.all(KDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
          color: Color(0XFFF7E8FF), borderRadius: BorderRadius.circular(10)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0XFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6,
                color: Color(0XFFA600FF).withOpacity(0.25)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..color = Color(0XFFDFA3FF).withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            color: Color(0XFFA600FF).withOpacity(0.5)),
                      ]),
                ),
                Text(
                  numOfExp,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: KDefaultPadding / 2,
            ),
            const Text(
              "Years of Experience",
              style: TextStyle(color: Color(0XFFA600FF)),
            )
          ],
        ),
      ),
    );
  }
}
