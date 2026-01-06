import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/home/models/home_item_model.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/grid_items.dart';

class BodyGridItems extends StatelessWidget {
  const BodyGridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 130, 20),
      decoration: const BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: GridView.builder(
        itemCount: homeItems.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          return GridItem(item: homeItems[index]);
        },
      ),
    );
  }
}
