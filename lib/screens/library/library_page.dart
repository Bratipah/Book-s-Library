import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';
import 'package:test_ui/screens/library/library_card.dart';
import 'package:test_ui/models/Product.dart';

class LibraryPage extends StatelessWidget {
  LibraryPage({
    Key? key,
    this.product,
  }) : super(key: key);

  Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Library Page'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
       padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: booksProducts.length,
          itemBuilder: (context, index) {
            return LibraryCard(product: booksProducts[index]);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
