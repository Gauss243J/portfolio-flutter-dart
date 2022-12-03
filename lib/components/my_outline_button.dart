import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String imageSrc, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
          onPressed: press,
          padding: const EdgeInsets.symmetric(
            vertical: KDefaultPadding,
            horizontal: KDefaultPadding * 2.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          borderSide: const BorderSide(color: Color(0XFFEDEDED)),
          child: Row(
            children: [
              Image.asset(
                imageSrc,
                height: 40,
              ),
              const SizedBox(
                width: KDefaultPadding,
              ),
              Text(text),
            ],
          )),
    );
  }
}
