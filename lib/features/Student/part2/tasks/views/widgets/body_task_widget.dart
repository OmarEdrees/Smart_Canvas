import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/tasks/views/widgets/task_widget.dart';

class BodyTaskWidget extends StatelessWidget {
  const BodyTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),

            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskWidget(title: tasks[index].title);
              },
            ),
          ),
        ),
      ],
    );
  }
}
