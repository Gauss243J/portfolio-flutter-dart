import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

List<Feedback> feedbacks = [
  Feedback(
    name: "Gauss Joseph",
    review: review,
    userPic: 'assets/images/photo-4.webp',
    id: 1,
    color: Color(0XFFFFF3DD),
  ),
  Feedback(
    name: "Gauss Joseph",
    review: review,
    userPic: 'assets/images/photo-4.webp',
    id: 2,
    color: Color(0XFFD9FFFC),
  ),
  Feedback(
    name: "Gauss Joseph",
    review: review,
    userPic: 'assets/images/photo-4.webp',
    id: 3,
    color: Color(0XFFFFE0E0),
  ),
];
String review =
    'Lorem This app is linked to the debug service This app is linked to the debug service This app is linked to the debug service';
