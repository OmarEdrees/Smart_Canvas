import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/assignment/view/models/assignment_Page.dart';
import 'package:smart_canvas/features/Doctor/assignment/view/widgets/item_widget.dart';

class AssignmentBodyWidget extends StatelessWidget {
  const AssignmentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),

            child: Column(
              children: [
                ItemWidget(
                  title: 'First Grade',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const AssignmentPage(title: 'First Grade'),
                      ),
                    );
                  },
                ),
                ItemWidget(
                  title: 'Second Grade',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const AssignmentPage(title: 'Second Grade'),
                      ),
                    );
                  },
                ),
                ItemWidget(
                  title: 'Third Grade',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const AssignmentPage(title: 'Third Grade'),
                      ),
                    );
                  },
                ),
                ItemWidget(
                  title: 'Fourth Grade',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const AssignmentPage(title: 'Fourth Grade'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
