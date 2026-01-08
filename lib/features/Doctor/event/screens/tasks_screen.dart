// tasks_screen.dart
import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/event/models/event_model.dart';

class TasksScreen extends StatelessWidget {
  final EventModel event;

  const TasksScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Added'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(event.timeText),
          ],
        ),
      ),
    );
  }
}
