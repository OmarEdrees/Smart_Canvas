import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/home/models/home_item_model.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/body_side_button.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/grid_items.dart';

class BodyGridItems extends StatelessWidget {
  const BodyGridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: homeItems.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 14,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return GridItem(item: homeItems[index]);
              },
            ),
          ),

          /// RIGHT SIDE BUTTONS
          BodySideButton(),
        ],
      ),
    );
  }
}
