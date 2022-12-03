import 'package:flutter/material.dart';

const kTextColor = Color(0XFF707070);
const kTextLightColor = Color(0XFF555555);

const KDefaultPadding = 20.0;

final KDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0XFF0700B1).withOpacity(0.15),
);

final KDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

final KDefaultInputDecorationTheme = InputDecorationTheme(
  border: KDefaultOutlineInputBorder,
  enabledBorder: KDefaultOutlineInputBorder,
  focusedBorder: KDefaultOutlineInputBorder,
);

final KDefaultOutlineInputBorder = OutlineInputBorder(
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0XFFCEE4FD),
  ),
);
