import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String title;
  final String icon;

  const NotificationWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF3a8def),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Container(
                child: Text(
                  title,

                  maxLines: 5,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 1,
              child: Container(height: 40, width: 60, child: Image.asset(icon)),
            ),
          ],
        ),
        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            " jul 23 .2024 at 09:15am",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            right: 20,
            left: 20,
            top: 5,
          ),
          child: Divider(color: Colors.grey, thickness: 1),
        ),
      ],
    );
  }
}
