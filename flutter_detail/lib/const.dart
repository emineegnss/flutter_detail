import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'models/user_model.dart';

class Const {
  static final users = <UserModel>[
    UserModel(
      name: "Dr. Mehmet OZ",
      description: "64 Positive Feedbacks ",
      image: 'assets/lenovo-22007-2880x1800.jpg',
      cover: "assets/lenovo-22007-2880x1800 - Kopya.jpg",
      rate: 2,
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      //date: DateTime.now().subtract(Duration(days: 2)),
      date: DateTime.now(),

      duration: Duration(minutes: 40, seconds: 9),
    ),
    UserModel(
      name: "Emine",
      description: "45 Positive Feedbacks ",
      image: "assets/doctor.png",
      cover: "assets/istockphoto-1172665165-1024x1024.jpg",
      rate: 5,
      text:
          "Praesent scelerisque tempor quam, vel consectetur sem laoreet sit amet. Sed sed auctor ligula, vel lobortis massa.",
      //date: DateTime.now().subtract(Duration(days: 2)),
      date: DateTime.now(),
      duration: Duration(minutes: 60),
    ),
    UserModel(
      name: "Samet",
      description: "56 Positive Feedbacks ",
      image: "assets/doctor-man.png",
      cover: "assets/istockphoto-1172665165-1024x1024.jpg",
      rate: 3,
      text:
          "Nam elementum pellentesque arcu, eu porttitor nibh congue non. Ut sit amet lacus ac mauris sollicitudin pellentesque non vitae lectus. ",
      //date: DateTime.now().subtract(Duration(days: 2)),
      date: DateTime.now(),
      duration: Duration(minutes: 60),
    ),
    UserModel(
      name: "Adil",
      description: "60 Positive Feedbacks ",
      image: "assets/myhc_92789.jpg",
      cover: "assets/istockphoto-1172665165-1024x1024.jpg",
      rate: 4,
      date: DateTime.now(),
      duration: Duration(minutes: 10),
      text:
          "Fusce at efficitur nisi. Praesent dapibus eget velit sed blandit. Sed maximus efficitur egestas. Quisque at ex dapibus, maximus neque eu, varius est.",
    ),
    UserModel(
      name: "Çağri",
      description: "40 Positive Feedbacks ",
      date: DateTime.now(),
      duration: Duration(minutes: 10),
      image: "assets/doktor-nedir-ne-is-yapar-doktor-ve-doktorluk-hakkinda-bilgi-1161.jpg",
      cover: "assets/istockphoto-1172665165-1024x1024.jpg",
      rate: 1,
      text:
          "Mauris aliquet placerat nunc, id pretium elit bibendum malesuada. Donec laoreet neque ac malesuada fermentum.",
    ),
  ];
}
