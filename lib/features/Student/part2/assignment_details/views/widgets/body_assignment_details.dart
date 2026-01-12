import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/body_field_duties.dart';

class BodyAssignmentDetails extends StatelessWidget {
  const BodyAssignmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.2),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: []),
    );
  }
}
