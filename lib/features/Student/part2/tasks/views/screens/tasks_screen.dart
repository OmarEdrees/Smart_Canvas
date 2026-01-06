import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/home/models/home_item_model.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key, required HomeItemModel homeItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/task_icon.png', height: 40, width: 40),
            SizedBox(width: 10),
            Text(
              'Tasks',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff0C0A3E),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),

              child: SingleChildScrollView(
                child: Column(
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
                              'The deadline for submitting Dr. Mohammeds project is next week',

                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff0D3470),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
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
                              'The deadline for submitting Dr. Mohammeds project is next week',

                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff0D3470),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
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
                              'The deadline for submitting Dr. Mohammeds project is next week',

                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff0D3470),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
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
                              'The deadline for submitting Dr. Mohammeds project is next week',

                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff0D3470),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
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
                              'The deadline for submitting Dr. Mohammeds project is next week',

                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff0D3470),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
