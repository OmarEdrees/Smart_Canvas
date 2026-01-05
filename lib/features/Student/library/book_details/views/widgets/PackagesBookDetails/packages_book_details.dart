import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/PackagesBookDetails/book_details.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/PackagesBookDetails/divider_for_book_details.dart';

class PackagesBookDetails extends StatelessWidget {
  final double rating;
  const PackagesBookDetails({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BookDetails(title: 'Rating', description: '$rating'),
          DividerForBookDetails(),
          BookDetails(title: 'Number of Pages', description: '250'),
          DividerForBookDetails(),
          BookDetails(title: 'Language', description: 'Eng'),
          DividerForBookDetails(),
          BookDetails(title: 'Audio', description: '1h15m'),
        ],
      ),
    );
  }
}
