// lib/buy_now_page.dart
import 'package:flutter/material.dart';

class buynowpage extends StatelessWidget {
  final String bookName;
  final String coverImage;
  final String authorName;

  buynowpage(this.bookName, this.coverImage, this.authorName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        backgroundColor: Colors.teal[600],
      ),
      body: Card(
        margin:  EdgeInsets.all(20.0),

        color: Colors.grey[300],
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

    child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              coverImage,
              width: 150,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text('Book Name: $bookName'),
            Text('Author: $authorName'),
            Text('Short Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            Text('Price: \$19.99'),
            SizedBox(height: 16),
            DropdownButton<String>(
              // Implement dropdown options
              onChanged: (value) {},
              items: [], // Add your dropdown items
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the first page
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
