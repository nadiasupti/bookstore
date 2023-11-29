// lib/main.dart
import 'package:flutter/material.dart';
import 'book_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store App',
      theme: ThemeData(
        primarySwatch: Colors.orange,

      ),
      home: BookListPage(),
    );
  }
}
