import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';

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
