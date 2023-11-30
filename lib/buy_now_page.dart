import 'package:flutter/material.dart';

class buynowpage extends StatelessWidget {
  final String bookName;
  final String coverImage;
  final String authorName;

  const buynowpage(this.bookName, this.coverImage, this.authorName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Now'),
        backgroundColor: Colors.teal[600],
      ),
      body: Card(
        margin: const EdgeInsets.all(20.0),
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
              Text(
                bookName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                coverImage,
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                authorName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '"Harry truly seems at his happiest when he plays Quidditch, as we can see here in this vivid interpretation of his match against Slytherin. The use of strong reds in this image bring out the vibrancy of the wizard sport, not to mention a nod to Harry’s Gryffindor house colors."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Text(
                'Price: ৳500',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 16),
              //fit: BoxFit.cover,
              DropdownButton<String>(
                onChanged: (value) {},
                items: const [
                  DropdownMenuItem<String>(
                    value: 'option1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option2',
                    child: Text('Option 2'),
                  ),
                  //fit: BoxFit.cover,
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the first page
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
