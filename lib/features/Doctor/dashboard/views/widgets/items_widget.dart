import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/dashboard/models/items_model.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/grade_widget.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 130, 20),
        decoration: const BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true, // ⭐ الحل الأساسي
            physics: const NeverScrollableScrollPhysics(),
            itemCount: Items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              return GradeWidget(item: Items[index]);
            },
          ),
        ),
      ),
    );
  }
}
