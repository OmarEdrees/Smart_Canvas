import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/button_widget.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/items_widget.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/appBar.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/header.dart';

Scaffold HomeScreen() {
  return Scaffold(
    appBar: appBarWidget(),
    backgroundColor: Colors.grey.shade300,
    body: Stack(
      children: [
        /// HEADER
        Header(image: 'assets/images/graduated_person.png'),

        /// BODY
        ItemsWidget(),

        /// RIGHT SIDE BUTTONS
        ButtonWidget(),
      ],
    ),
  );
}
