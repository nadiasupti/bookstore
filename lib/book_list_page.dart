import 'package:flutter/material.dart';
import 'buy_now_page.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Shop"),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView(
        children:[
          _buildBookCard(context, 'Harry Potter and the Philosopher’s Stone', 'J.K. ROWLING', '4.50', 'images/book1.png'),
          // Add another card for the second book
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
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(authorName),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),

            Text(
              'Rating: $rating',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
          ],
        ),

        trailing: ElevatedButton.icon(
          onPressed: () {
            // Navigate to the Buy Now page when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => buynowpage(bookName, coverImage, authorName)),
            );
          },
          icon: Icon(Icons.shopping_cart),
          label: Text('Buy Now'),
        ),
      ),
    );
  }
}
