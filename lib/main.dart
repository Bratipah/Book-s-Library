import 'package:flutter/material.dart';
import 'screens/navigation/Navigation.dart';
import 'screens/library/library_page.dart';
// import 'models/product_response.dart';
import 'models/books.dart';
import 'models/booksApi.dart';
import 'screens/home/HomePage.dart';
// import 'screens/library/library_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Test',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}
