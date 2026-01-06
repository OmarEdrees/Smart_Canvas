import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/tasks/views/widgets/body_task_widget.dart';

class TaskScreenWidget extends StatelessWidget {
  const TaskScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/task_icon.png', height: 40, width: 40),
            SizedBox(width: 10),
            Text(
              'Tasks',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff0C0A3E),
              ),
            ),
          ],
        ),
      ),
      body: BodyTaskWidget(),
    );
  }
}
