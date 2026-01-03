import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/sizes/sized_config.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu, size: 28),
        Row(
          children: [
            const Icon(Icons.notifications_none, size: 28),
            const SizedBox(width: 15),
            Container(
              width: SizeConfig.width * 0.12,
              height: SizeConfig.width * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://randomuser.me/api/portraits/men/32.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
