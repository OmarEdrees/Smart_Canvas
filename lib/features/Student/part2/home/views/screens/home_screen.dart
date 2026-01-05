import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/appBar.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/body_grid_items.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/body_side_button.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          /// HEADER
          Header(image: 'assets/images/student_person.png'),

          /// BODY
          BodyGridItems(),

          /// RIGHT SIDE BUTTONS
          BodySideButton(),
        ],
      ),
    );
  }
}
