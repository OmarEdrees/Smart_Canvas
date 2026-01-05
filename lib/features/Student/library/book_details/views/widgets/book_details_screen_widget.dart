import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/PackagesBookDetails/packages_book_details.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/add_to_myButton.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/author.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/author_card.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/book_image.dart';
import 'package:smart_canvas/features/Student/library/book_details/views/widgets/title_rating_desc.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';

class BookDetailsScreenWidget extends StatelessWidget {
  final MyBooksModel book;
  const BookDetailsScreenWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Book Image
                      BookImage(imageUrl: book.imageUrl),
                      const SizedBox(height: 25),
                      PackagesBookDetails(rating: book.rating!),
                      const SizedBox(height: 15),
                      // Title & Rating & Description
                      TitleRatingDesc(
                        title: book.title,
                        description: book.description!,
                        rating: book.rating!,
                      ),
                      const SizedBox(height: 20),
                      // Author
                      Author(),
                      const SizedBox(height: 8),
                      // Author Card
                      AuthorCard(
                        author: book.author,
                        authorImage: book.authorImage,
                      ),
                    ],
                  ),
                ),
              ),
              // Add To Cart Button
              AddToMyButton(currentBook: book),
            ],
          ),
        ),
      ),
    );
  }
}
