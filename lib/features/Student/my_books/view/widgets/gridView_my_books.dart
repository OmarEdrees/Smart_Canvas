// import 'package:flutter/material.dart';
// import 'package:smart_canvas/features/Student/my_books/models/my_books_model.dart';

// class GridViewMyBooks extends StatefulWidget {
//   final List<MyBooksModel> booksList;

//   GridViewMyBooks({super.key, required this.booksList});

//   @override
//   State<GridViewMyBooks> createState() => _GridViewMyBooksState();
// }

// class _GridViewMyBooksState extends State<GridViewMyBooks> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.only(left: 10, right: 10),
//         child: GridView.builder(
//           shrinkWrap: true, // مهم جداً: ليأخذ الـ Grid مساحة محتواه فقط
//           physics:
//               const NeverScrollableScrollPhysics(), // منع الـ Grid من التمرير بشكل مستقل
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.66,
//             crossAxisSpacing: 5,
//             mainAxisSpacing: 10,
//           ),
//           itemCount: widget.booksList.length,
//           itemBuilder: (context, index) {
//             final book = widget.booksList[index]; // الحصول على بيانات الكتاب الحالي
//             return Container(
//               width: 150,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(14),
//                       child: Image.network(book.imageUrl, fit: BoxFit.cover),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     book.title,
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     book.author,
//                     style: TextStyle(color: Colors.grey, fontSize: 12),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_canvas/features/Student/my_books/logic/my_books_controller.dart';
import 'package:smart_canvas/features/Student/my_books/models/my_books_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class GridViewMyBooks extends StatefulWidget {
  final List<MyBooksModel>? booksList;

  const GridViewMyBooks({super.key, this.booksList});

  @override
  State<GridViewMyBooks> createState() => _GridViewMyBooksState();
}

class _GridViewMyBooksState extends State<GridViewMyBooks> {
  List<MyBooksModel> savedBooks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchBooks(); // استدعاء دالة التحميل عند التشغيل
  }

  // جلب البيانات باستخدام الكنترولر
  void _fetchBooks() async {
    final books = await MyBooksController.loadSavedBooks();
    setState(() {
      savedBooks = books;
      isLoading = false;
    });
  }

  // تنفيذ الحذف باستخدام الكنترولر
  void _handleDelete(int index) async {
    await MyBooksController.deleteBook(index);
    _fetchBooks(); // تحديث القائمة بعد الحذف
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Book removed successfully")));
  }

  /////////////////////////////////
  void _showDeleteDialog(int index) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning, // نوع التنبيه (تحذير)
      animType: AnimType.bottomSlide, // حركية الظهور من الأسفل
      title: 'Remove Book',
      desc: 'Are you sure you want to remove this book from your library?',
      btnCancelText: 'Cancel',
      btnCancelColor: Colors.grey[400],
      btnOkText: 'Remove',
      btnOkColor: Colors.red,
      // زر الإلغاء
      btnCancelOnPress: () {},
      // زر التأكيد (الحذف)
      btnOkOnPress: () {
        _handleDelete(index);
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (savedBooks.isEmpty) {
      return Expanded(
        child: const Center(child: Text("There are no books added yet")),
      );
    }

    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.66,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          itemCount: savedBooks.length, // نستخدم القائمة التي جلبناها
          itemBuilder: (context, index) {
            final book = savedBooks[index];
            return BookGridItem(
              book: savedBooks[index],
              onLongPress: () => _showDeleteDialog(index),
            );
          },
        ),
      ),
    );
  }
}

class BookGridItem extends StatelessWidget {
  final MyBooksModel book;
  final VoidCallback onLongPress;
  const BookGridItem({
    super.key,
    required this.book,
    required this.onLongPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // الضغط المطول للحذف
      onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(book.imageUrl, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              book.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              book.author,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
