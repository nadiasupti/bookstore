import 'package:flutter/material.dart';
import 'buy_now_page.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Shop"),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView(
        children:[
          _buildBookCard(context, 'Harry Potter and the Philosopher’s Stone', 'J.K. ROWLING', '2.50', 'images/book1.png'),
          _buildBookCard(context, 'Jurassic Park', 'Michael Crichton', '4.00', 'images/book2.png'),
        ],
      ),
    );
  }
  Widget _buildBookCard(BuildContext context, String bookName, String authorName, String rating, String coverImage) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          coverImage,
          width: 60,
          height: 110,
         // fit: BoxFit.cover,
        ),
        title: Text(bookName,
          style: const TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(authorName),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),

            Text(
              'Rating: $rating',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
          ],
        ),


    trailing: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => buynowpage(bookName, coverImage, authorName)),
            );
          },
          icon: const Icon(Icons.shopping_cart),
          label: const Text('Buy Now'),
        ),
      ),
    );
  }
}
