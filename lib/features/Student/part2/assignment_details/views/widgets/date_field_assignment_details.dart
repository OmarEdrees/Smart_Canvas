import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/field_assignment_details.dart';

class DateFieldAssignmentDetails extends StatelessWidget {
  final String hint;
  const DateFieldAssignmentDetails({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        FieldAssignmentDetails(hint: hint),
        Positioned(
          right: 20,
          child: Row(
            children: const [
              Text("|", style: TextStyle(fontSize: 18)),
              SizedBox(width: 18),
              Text("|", style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ],
    );
  }
}
