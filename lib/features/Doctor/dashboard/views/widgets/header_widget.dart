import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String image;
  const HeaderWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Color(0xff0D0246)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// USER INFO
          Row(
            children: [
              Image.asset(image, fit: BoxFit.cover, height: 150, width: 100),

              const SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Name : ......",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "std : ......",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset('assets/images/icon.png', height: 60, width: 60),
            ],
          ),
        ],
      ),
    );
  }
}
