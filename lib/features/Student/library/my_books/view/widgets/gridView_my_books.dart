import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/my_books/logic/my_books_controller.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:smart_canvas/features/Student/library/my_books/view/widgets/book_grid_item.dart';

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
            // final book = savedBooks[index];
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
