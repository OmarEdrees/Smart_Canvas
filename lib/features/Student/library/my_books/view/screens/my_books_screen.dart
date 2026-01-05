import 'package:flutter/material.dart';
import 'package:smart_canvas/core/components/CustomHeader/custom_header.dart';
import 'package:smart_canvas/core/components/variables_app.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';
import 'package:smart_canvas/features/Student/library/my_books/view/widgets/gridView_my_books.dart';
import 'package:smart_canvas/features/Student/library/my_books/view/widgets/search_bar.dart';

class MyBooksScreen extends StatelessWidget {
  MyBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          CustomHeader(title: 'My Books', icon: Icons.menu_book_sharp),
          Search(),
          GridViewMyBooks(),
        ],
      ),
    );
  }
}
