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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text('$bookName'),
           // crossAxisAlignment: CrossAxisAlignment.center,
        Text('$bookName',
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        ),
            Image.asset(
              coverImage,
              width: 150,
              height: 250,
              fit: BoxFit.cover,
              //elevation: 10.0,

            ),
            SizedBox(height: 16),
            Center(child: Text('$authorName',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                '"Harry truly seems at his happiest when he plays Quidditch, as we can see here in this vivid interpretation of his match against Slytherin. The use of strong reds in this image bring out the vibrancy of the wizard sport, not to mention a nod to Harry’s Gryffindor house colors."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Center(
              child: Text('Price: ৳500',
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            //Text('Price: \$500'),
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
