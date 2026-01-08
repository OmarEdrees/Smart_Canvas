import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Doctor/event/models/event_model.dart';

class EventItem extends StatefulWidget {
  final EventModel event;

  const EventItem({super.key, required this.event});

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  @override
  Widget build(BuildContext context) {
    final event = widget.event;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          // النقطة الزرقاء
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Container(
              width: 15,
              height: 15,
              margin: const EdgeInsets.only(top: 4, right: 20),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // النص + الزر
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 245, // كل ما صغّرته قل عدد الكلمات في السطر
                  child: Text(
                    event.title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.navyBlue,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    if (event.isAdded)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xff38b25d),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.check,
                                size: 20,
                                color: Colors.white,
                                weight: 200,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Added',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.navyBlue),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            event.isAdded = true;
                          });
                          // هنا ممكن ترسل الحدث لبلوك/بروفايدر
                        },

                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '+ Add to tasks',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.navyBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                    const Spacer(),
                    Text(
                      event.timeText,
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: AppColors.blueDark, thickness: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
