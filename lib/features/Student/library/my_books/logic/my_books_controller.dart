import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_canvas/features/Student/library/my_books/models/my_books_model.dart';

class MyBooksController {
  // دالة جلب الكتب
  static Future<List<MyBooksModel>> loadSavedBooks() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedBooksJson = prefs.getStringList('my_saved_books');

    if (savedBooksJson != null) {
      return savedBooksJson.map((bookStr) {
        return MyBooksModel.fromMap(jsonDecode(bookStr));
      }).toList();
    }
    return [];
  }

  // دالة الحذف
  static Future<void> deleteBook(int index) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedBooksJson = prefs.getStringList('my_saved_books') ?? [];

    if (index >= 0 && index < savedBooksJson.length) {
      savedBooksJson.removeAt(index);
      await prefs.setStringList('my_saved_books', savedBooksJson);
    }
  }
}
