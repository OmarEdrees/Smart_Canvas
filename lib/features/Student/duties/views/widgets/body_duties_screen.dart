import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/body_field_duties.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/body_status_row.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/header_duties.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/search_bar_duties.dart';

class BodyDutiesScreen extends StatelessWidget {
  const BodyDutiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderDuties(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SearchBarDuties(),
                SizedBox(height: 50),
                BodyFieldDuties(),
                const SizedBox(height: 50),
                BodyStatusRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
