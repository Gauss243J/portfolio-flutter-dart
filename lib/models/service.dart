import 'package:flutter/material.dart';

class Service {
  String image, tilte;
  final Color color;
  int id;

  Service(
      {required this.image,
      required this.color,
      required this.tilte,
      required this.id});
}

List<Service> services = [
  Service(
      image: "assets/logo/reviews.png",
      color: Color(0XFFD9FFFC),
      tilte: "Service Management",
      id: 1),
  Service(
      image: "assets/logo/code.png",
      color: Color(0XFFE4FFC7),
      tilte: "Software Engeneer",
      id: 2),
  Service(
      image: "assets/logo/chronometer.png",
      color: Color(0XFFFFF3DD),
      tilte: "Data Scientist et AI",
      id: 3),
  Service(
      image: "assets/logo/audience.png",
      color: Color(0XFFFFE0E0),
      tilte: "Electronique",
      id: 4),
];
