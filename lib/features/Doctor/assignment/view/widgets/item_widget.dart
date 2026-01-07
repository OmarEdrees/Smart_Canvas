import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const ItemWidget({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              // دائرة زرقاء للتوضيح أو كعنصر تصميم
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFF3a8def),
                  shape: BoxShape.circle,
                ),
              ),

              // مسافة أفقية بين الدائرة والنص
              const SizedBox(width: 20),

              // جعل النص قابل للضغط كزر
              GestureDetector(
                onTap: onTap,
                child: Text(
                  title,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xff0D3470),
                  ),
                ),
              ),
            ],
          ),

          // خط فاصل بين العناصر
          const Padding(
            padding: EdgeInsets.only(top: 35, right: 20, left: 20),
            child: Divider(color: Colors.black, thickness: 1),
          ),
        ],
      ),
    );
  }
}
