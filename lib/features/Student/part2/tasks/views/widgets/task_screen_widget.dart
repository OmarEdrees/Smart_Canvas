import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/tasks/views/widgets/body_task_widget.dart';

class TaskScreenWidget extends StatelessWidget {
  const TaskScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        backgroundColor: AppColors.background,

        title: Row(
          children: [
            Image.asset('assets/images/task_icon.png', height: 40, width: 40),
            SizedBox(width: 10),
            Text(
              'Tasks',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: BodyTaskWidget(),
    );
  }
}
