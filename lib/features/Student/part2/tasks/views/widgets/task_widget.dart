import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  const TaskWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF3a8def),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Container(
                child: Text(
                  title,

                  maxLines: 5,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.check, color: Colors.white, size: 30),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Divider(color: Colors.white, thickness: 1),
        ),
      ],
    );
  }
}

List<TaskWidget> tasks = [
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
  TaskWidget(
    title: 'The deadline for submitting Dr. Mohammeds project is next week',
  ),
];
