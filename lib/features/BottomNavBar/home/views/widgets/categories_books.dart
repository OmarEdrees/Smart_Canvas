import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class categoriesBooks extends StatelessWidget {
  const categoriesBooks({super.key, required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((e) {
          final selected = e == 'Design';
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: selected ? AppColors.kPrimaryColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              e,
              style: TextStyle(color: selected ? Colors.white : Colors.black),
            ),
          );
        }).toList(),
      ),
    );
  }
}
