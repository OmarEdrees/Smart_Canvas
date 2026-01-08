class EventModel {
  final String title;

  final String timeText;
  bool isAdded;

  EventModel({
    required this.title,

    required this.timeText,
    this.isAdded = false,
  });
}
