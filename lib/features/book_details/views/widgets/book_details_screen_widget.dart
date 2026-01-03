import 'package:flutter/material.dart';
import 'package:smart_canvas/features/book_details/views/widgets/add_to_myButton.dart';
import 'package:smart_canvas/features/book_details/views/widgets/author.dart';
import 'package:smart_canvas/features/book_details/views/widgets/author_card.dart';
import 'package:smart_canvas/features/book_details/views/widgets/book_image.dart';
import 'package:smart_canvas/features/book_details/views/widgets/title_rating_desc.dart';

class BookDetailsScreenWidget extends StatelessWidget {
  const BookDetailsScreenWidget({super.key});

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
                      BookImage(),
                      const SizedBox(height: 24),
                      // Title & Rating & Description
                      TitleRatingDesc(),
                      const SizedBox(height: 24),
                      // Author
                      Author(),
                      const SizedBox(height: 20),
                      // Author Card
                      AuthorCard(),
                    ],
                  ),
                ),
              ),
              // Add To Cart Button
              AddToMyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
