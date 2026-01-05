import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/book_details_screen_widget.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';

class BookDetailsScreen extends StatelessWidget {
  final MyBooksModel book;
  const BookDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return BookDetailsScreenWidget(book: book);
  }
}
