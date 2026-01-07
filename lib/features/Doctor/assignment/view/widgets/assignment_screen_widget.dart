import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/assignment/view/widgets/assignment_body_widget.dart';

class AssignmentScreenWidget extends StatelessWidget {
  const AssignmentScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            const SizedBox(width: 30),
            Image.asset(
              'assets/images/assignment_icon.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'Assignment',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff0C0A3E),
              ),
            ),
          ],
        ),
      ),

      body: AssignmentBodyWidget(),
    );
  }
}
