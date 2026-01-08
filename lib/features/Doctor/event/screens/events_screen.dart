import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Doctor/event/models/event_model.dart';
import 'package:smart_canvas/features/Doctor/event/screens/added_events_screen.dart';
import 'package:smart_canvas/features/Doctor/event/widgets/event_item.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  // قائمة ثابتة لكن تُستخدم كحالة للشاشة
  final List<EventModel> events = [
    EventModel(
      title:
          'Scientific conferences\nOn the latest trends in the humanities, applied sciences, technology, medicine, etc.',
      timeText: 'Today at 9am',
    ),
    EventModel(
      title:
          'Quality and Academic Accreditation Seminars\nTo improve curricula and develop study programs',
      timeText: '22/10 at 11am',
    ),
    EventModel(
      title:
          'Workshops on modern teaching methods, such as blended learning, artificial intelligence in education, and university classroom management.',
      timeText: '22/10 at 11am',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            const SizedBox(width: 30),
            Image.asset(
              'assets/images/time_management_icon.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'Events',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff0C0A3E),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // زر Go to tasks
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.greyBackground,
              ),
              child: TextButton(
                onPressed: () {
                  // الأحداث المضافة فقط
                  final addedEvents = events.where((e) => e.isAdded).toList();

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          AddedEventsScreen(addedEvents: addedEvents),
                    ),
                  );
                },
                child: Text(
                  'Go to tasks',
                  style: TextStyle(
                    color: AppColors.navyBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              decoration: BoxDecoration(
                color: AppColors.greyBackground,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) =>
                    EventItem(event: events[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: events.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
