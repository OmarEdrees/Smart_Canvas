import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Doctor/event/models/event_model.dart';
import 'package:smart_canvas/features/Doctor/event/widgets/event_item.dart';

class AddedEventsScreen extends StatelessWidget {
  final List<EventModel> addedEvents;

  const AddedEventsScreen({super.key, required this.addedEvents});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xff0C0A3E)),
          onPressed: () => Navigator.pop(context),
        ),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
            child: Text(
              'Added',
              style: TextStyle(
                color: Color(0xff0C0A3E),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: AppColors.greyBackground,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: addedEvents.isEmpty
                  ? const Center(
                      child: Text(
                        'No tasks added yet',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) =>
                          EventItem(event: addedEvents[index]),
                      separatorBuilder: (_, __) => const SizedBox(height: 16),
                      itemCount: addedEvents.length,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
