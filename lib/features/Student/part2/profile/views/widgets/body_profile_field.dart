import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/profile/views/widgets/profile_field.dart';

class BodyProfileField extends StatelessWidget {
  const BodyProfileField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250),
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        children: [
          ProfileField(title: 'Student Name:'),
          ProfileField(title: 'the age:'),
          ProfileField(title: 'Gender:'),
          ProfileField(title: 'The band:'),
          ProfileField(title: 'Specialization:'),
          ProfileField(title: 'national number:'),
          ProfileField(title: 'the address:'),
        ],
      ),
    );
  }
}
