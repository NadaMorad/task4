import 'package:flutter/material.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({super.key});

  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      Navigator.pushNamed(context, '/players_list');
    } else if (index == 1) {
    } else if (index == 2) {
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books List', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF007994),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              BookCard(title: 'The Alchemist', author: 'Paulo Coelho'),
              BookCard(
                title: 'Harry Potter and the Sorcerer\'s Stone',
                author: 'J.K. Rowling',
              ),
              BookCard(title: 'To Kill a Mockingbird', author: 'Harper Lee'),
              BookCard(
                title: 'The Great Gatsby',
                author: 'F. Scott Fitzgerald',
              ),
              BookCard(title: '1984', author: 'George Orwell'),
              BookCard(
                title: 'The Lord of the Rings',
                author: 'J.R.R. Tolkien',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0, // يمكنك تغيير هذا ليعكس الصفحة النشطة حالياً
        selectedItemColor: const Color(0xFF007994),
        unselectedItemColor: Colors.grey,
        onTap: (index) => _onItemTapped(index, context), // ربط دالة التنقل
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String author;

  const BookCard({super.key, required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(
          12.0,
        ), // زيادة الـ padding ليتسع الأيقونة الكبيرة
        child: Row(
          children: [
            const Icon(
              Icons.menu_book_rounded,
              size: 60,
              color: Color(0xFFE74C3C),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  author,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
