import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/library/BottomNavBar/home/views/screens/home_screen.dart';
import 'package:smart_canvas/features/Student/library/my_books/view/screens/my_books_screen.dart';

class MainBottomNav extends StatefulWidget {
  const MainBottomNav({super.key});

  @override
  State<MainBottomNav> createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int currentIndex = 0;

  final pages = [HomeScreen(), CartPage(), MyBooksScreen(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: pages[currentIndex],

      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navItem(Icons.home, 0),
            _navItem(Icons.shopping_bag, 1),
            _navItem(Icons.favorite, 2),
            _navItem(Icons.grid_view_rounded, 3),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Icon(
        icon,
        size: 30,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Cart", style: TextStyle(fontSize: 24)));
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favorite", style: TextStyle(fontSize: 24)));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile", style: TextStyle(fontSize: 24)));
  }
}
