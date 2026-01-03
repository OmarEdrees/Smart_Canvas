import 'package:flutter/material.dart';
import 'package:smart_canvas/core/components/variables_app.dart';
import 'package:smart_canvas/features/BottomNavBar/home/views/widgets/appBar.dart';
import 'package:smart_canvas/features/BottomNavBar/home/views/widgets/book_item_card.dart';
import 'package:smart_canvas/features/BottomNavBar/home/views/widgets/categories_books.dart';
import 'package:smart_canvas/features/BottomNavBar/home/views/widgets/my_books_card.dart';
import 'package:smart_canvas/features/BottomNavBar/home/views/widgets/search_bar.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      //bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              const SizedBox(height: 16),
              searchBar(),
              const SizedBox(height: 35),
              myBooksCard(),
              const SizedBox(height: 30),
              const Text(
                'For you',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              categoriesBooks(categories: categories),
              const SizedBox(height: 16),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return bookItemCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
