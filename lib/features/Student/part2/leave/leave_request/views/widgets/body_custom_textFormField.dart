import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/custom_textFormField.dart';

class BodyCustomTextFormField extends StatelessWidget {
  const BodyCustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormFieldLeave(
                hint: "Start Date:",
                //controller: startDateController,
                readOnly: true,
                onTap: () {
                  // Date Picker
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomTextFormFieldLeave(
                hint: "End Date:",
                //controller: endDateController,
                readOnly: true,
                onTap: () {
                  // Date Picker
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomTextFormFieldLeave(
          hint: "The reason:",
          //controller: reasonController,
          maxLines: 2,
        ),
      ],
    );
  }
}
