import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/date_field_assignment_details.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/description_box_field.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/field_assignment_details.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FieldAssignmentDetails(hint: "Name of the material"),
          const SizedBox(height: 12),
          FieldAssignmentDetails(hint: "Assignment title"),
          const SizedBox(height: 12),
          FieldAssignmentDetails(hint: "Doctor's name"),
          const SizedBox(height: 12),
          DateFieldAssignmentDetails(hint: "Publication date"),
          const SizedBox(height: 12),
          DateFieldAssignmentDetails(hint: "Delivery date"),
          const SizedBox(height: 18),
          DescriptionBoxField(),
        ],
      ),
    );
  }
}
