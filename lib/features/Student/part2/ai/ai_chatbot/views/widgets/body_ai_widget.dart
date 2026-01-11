import 'package:flutter/material.dart';

class BodyAiWidget extends StatelessWidget {
  final String image;
  final String titleButton;
  final Color colorButton;
  final void Function()? ontapButton;

  const BodyAiWidget({
    super.key,
    required this.image,
    required this.titleButton,
    required this.colorButton,
    required this.ontapButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, height: 275, fit: BoxFit.cover),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorButton,
            ),
            child: GestureDetector(
              onTap: ontapButton,
              child: Center(
                child: Text(
                  titleButton,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
