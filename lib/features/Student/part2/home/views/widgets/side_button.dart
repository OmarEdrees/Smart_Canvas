import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  final String image;
  final void Function() ontap;
  const SideButton({super.key, required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,

      child: Container(
        margin: const EdgeInsets.only(right: 5),
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15), // 👈 صغّر أو كبّر حسب اللي بدك
          child: Image.asset(image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
