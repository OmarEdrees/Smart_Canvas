import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/date_field_assignment_details.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/field_assignment_details.dart';

class BodyFieldDuties extends StatelessWidget {
  const BodyFieldDuties({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.2),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          FieldAssignmentDetails(hint: "Assignment title"),
          const SizedBox(height: 12),
          FieldAssignmentDetails(hint: "Name of the material"),
          const SizedBox(height: 12),
          DateFieldAssignmentDetails(hint: "Delivery time"),
          const SizedBox(height: 12),
          FieldAssignmentDetails(hint: "The remaining days"),
        ],
      ),
    );
  }
}
