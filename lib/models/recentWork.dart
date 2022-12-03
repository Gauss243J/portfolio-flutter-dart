import 'package:flutter/material.dart';

class RecentWork {
  String image, category, tilte;
  int id;

  RecentWork(
      {required this.image,
      required this.category,
      required this.tilte,
      required this.id});
}

List<RecentWork> recentWorks = [
  RecentWork(
      image: "assets/logo/airtel-money.png",
      category: "Graphic Design",
      tilte: "New et Fresh Looking Portfolio indeed at the end",
      id: 1),
  RecentWork(
      image: "assets/images/photo-1.jpeg",
      category: "Graphic Design",
      tilte: "New et Fresh Looking Portfolio indeed at the end",
      id: 2),
  RecentWork(
      image: "assets/images/photo-10.jpeg",
      category: "Graphic Design",
      tilte: "New et Fresh Looking Portfolio indeed at the end",
      id: 3),
  RecentWork(
      image: "assets/images/photo-4.jpeg",
      category: "Graphic Design",
      tilte: "New et Fresh Looking Portfolio indeed at the end",
      id: 4),
];
