class MyBooksModel {
  final String imageUrl;
  final String title;
  final String author;
  final String authorImage;
  final String? description;
  final double? rating;

  MyBooksModel({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.authorImage,
    this.description,
    this.rating,
  });

  // تحويل الكتاب إلى Map
  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'title': title,
      'rating': rating,
      'description': description,
      'authorImage': authorImage,
      'author': author,
    };
  }

  // إنشاء كتاب من Map (للقراءة من الـ Memory)
  factory MyBooksModel.fromMap(Map<String, dynamic> map) {
    return MyBooksModel(
      imageUrl: map['imageUrl'],
      title: map['title'],
      rating: map['rating'],
      description: map['description'],
      authorImage: map['authorImage'],
      author: map['author'],
    );
  }
}
