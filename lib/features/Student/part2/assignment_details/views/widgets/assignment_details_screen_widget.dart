import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/body_field_duties.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/search_bar_duties.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/body_assignment_details.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/description_box_field.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/header_assignment_details.dart';

class AssignmentDetailsScreenWidget extends StatelessWidget {
  const AssignmentDetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          '''Assignment
Details''',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.greyBackground,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderAssignmentDetails(),

            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchBarDuties(),
                  SizedBox(height: 80),
                  BodyFieldDuties(),
                  SizedBox(height: 50),
                  DescriptionBoxField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
