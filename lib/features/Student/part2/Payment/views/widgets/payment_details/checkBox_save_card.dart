import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class CheckBoxSaveCard extends StatefulWidget {
  const CheckBoxSaveCard({super.key});

  @override
  State<CheckBoxSaveCard> createState() => _CheckBoxSaveCardState();
}

class _CheckBoxSaveCardState extends State<CheckBoxSaveCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5, // تكبير الحجم قليلاً
          child: Checkbox(
            value: isChecked,
            side: BorderSide(color: Colors.grey.shade700),
            activeColor: AppColors.blueDark, // لون المربع عند التفعيل

            onChanged: (value) {
              setState(() {
                isChecked = value!; // 2. تحديث القيمة الحقيقية
              });
            },
          ),
        ),
        Text(
          'Save this card for payment',
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
