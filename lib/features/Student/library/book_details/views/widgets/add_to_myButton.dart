import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';

// class AddToMyButton extends StatelessWidget {
//   const AddToMyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async{
//         final SharedPreferences prefs = await SharedPreferences.getInstance();

//     // 1. جلب القائمة القديمة (إذا لم توجد ننشئ قائمة فارغة)
//     List<String> savedBooksJson = prefs.getStringList('my_saved_books') ?? [];

//     // 2. تحويل الكتاب الحالي (مثلاً الحالي هو currentBook) إلى نص JSON
//     String bookJson = jsonEncode(widget.currentBook.toMap());

//     // 3. التحقق إذا كان الكتاب مضافاً مسبقاً (اختياري)
//     if (!savedBooksJson.contains(bookJson)) {
//       savedBooksJson.add(bookJson);

//       // 4. حفظ القائمة المحدثة
//       await prefs.setStringList('my_saved_books', savedBooksJson);

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("تمت إضافة الكتاب لمكتبتك!")),
//       );
//     }
//       },
//       child: Container(
//         width: double.infinity,
//         height: 56,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           gradient: LinearGradient(
//             colors: [
//               const Color.fromARGB(185, 33, 140, 221),
//               AppColors.kPrimaryColor,
//             ],
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             "Add To My Books",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class AddToMyButton extends StatelessWidget {
  final MyBooksModel currentBook;

  const AddToMyButton({super.key, required this.currentBook});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        List<String> savedBooksJson =
            prefs.getStringList('my_saved_books') ?? [];

        String bookJson = jsonEncode(currentBook.toMap());

        if (!savedBooksJson.contains(bookJson)) {
          savedBooksJson.add(bookJson);
          await prefs.setStringList('my_saved_books', savedBooksJson);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("The book has been added to your library!"),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("This book already exists!")),
          );
        }
      },
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(185, 33, 140, 221),
              AppColors.kPrimaryColor,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "Add To My Books",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
