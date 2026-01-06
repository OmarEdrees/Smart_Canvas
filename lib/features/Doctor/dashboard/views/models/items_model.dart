import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String image;
  final Widget? screen;
  //final void Function()? ontap;
  //final BuildContext context;
  //final Color iconColor;

  ItemModel({
    required this.title,
    required this.image,
    this.screen,
    //required this.ontap,
    //required this.context,
    //required this.iconColor,
  });
}

final List<ItemModel> Items = [
  ItemModel(
    title: 'Assignment',
    image: "assets/images/result_icon.png",
    //iconColor: Colors.green,
  ),
  ItemModel(
    title: 'Payment alert',
    image: "assets/images/alarm_icon.png",
    // iconColor: Colors.orange,
  ),
  ItemModel(
    title: 'Tasks',
    image: "assets/images/task_icon.png",
    // iconColor: Colors.blue
  ),
  ItemModel(
    title: 'Attendance',
    image: "assets/images/attendant_list_icon.png",
    // iconColor: Colors.indigo,
  ),
  ItemModel(
    title: 'Digital Library',
    image: "assets/images/ebook_icon.png",
    //  iconColor: Colors.teal,
  ),
  ItemModel(
    title: 'Schedules',
    image: "assets/images/calendar_icon.png",
    //  iconColor: Colors.blueAccent,
  ),
  ItemModel(
    title: 'Student Group',
    image: "assets/images/student_team.png",
    //iconColor: Colors.green,
  ),
];
