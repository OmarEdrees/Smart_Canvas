import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class AssignmentPage extends StatefulWidget {
  final String title;

  const AssignmentPage({super.key, required this.title});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  final List<bool> checked = List.generate(13, (_) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            const SizedBox(width: 30),
            Image.asset(
              'assets/images/assignment_icon.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'Assignment',
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
          // Title
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 30, left: 16),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: AppColors.navyBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: AppColors.navyBlue,
                              ),
                            ),
                          ),
                        ),
                        const VerticalDivider(thickness: 1),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'assignment',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.navyBlue,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // List
                  Expanded(
                    child: ListView.builder(
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xff67637C)),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    '${index + 1}- Mahmoud Hassan',
                                    style: const TextStyle(
                                      color: Color(0xff475A82),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 48,
                                color: Colors.black,
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: CheckboxTheme(
                                    data: CheckboxThemeData(
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                            MaterialState.selected,
                                          )) {
                                            return const BorderSide(
                                              color: Color(0xff475A82),
                                              width: 2,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Color(0xff475A82),
                                            width: 2,
                                          );
                                        },
                                      ),
                                      fillColor: MaterialStateProperty.all(
                                        Colors.transparent,
                                      ),
                                      checkColor: MaterialStateProperty.all(
                                        Colors.black,
                                      ),
                                    ),
                                    child: Checkbox(
                                      value: checked[index],
                                      onChanged: (value) {
                                        setState(() {
                                          checked[index] = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
