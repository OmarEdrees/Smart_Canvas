import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/tasks/views/screens/tasks_screen.dart';

class HomeItemModel {
  final String title;
  final String image;
  final Widget? screen;
  //final void Function()? ontap;
  //final BuildContext context;
  //final Color iconColor;

  HomeItemModel({
    required this.title,
    required this.image,
    this.screen,
    //required this.ontap,
    //required this.context,
    //required this.iconColor,
  });
}

final List<HomeItemModel> homeItems = [
  HomeItemModel(
    title: 'Assignment',
    image: "assets/images/result_icon.png",
    //iconColor: Colors.green,
  ),
  HomeItemModel(
    title: 'Payment alert',
    image: "assets/images/alarm_icon.png",
    // iconColor: Colors.orange,
  ),
  HomeItemModel(
    screen: TasksScreen(),
    title: 'Tasks',
    image: "assets/images/task_icon.png",
    // iconColor: Colors.blue
  ),
  HomeItemModel(
    title: 'Attendance',
    image: "assets/images/attendant_list_icon.png",
    // iconColor: Colors.indigo,
  ),
  HomeItemModel(
    title: 'Digital Library',
    image: "assets/images/ebook_icon.png",
    //  iconColor: Colors.teal,
  ),
  HomeItemModel(
    title: 'Schedules',
    image: "assets/images/calendar_icon.png",
    //  iconColor: Colors.blueAccent,
  ),
];
