import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';
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
          child: ListView.builder(
            itemCount: booksProducts.length,
            itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.asset(product?.image ?? ''),
              ),
              title: Text(product?.title ?? ''),
              subtitle: Text(product?.description ?? ''),
              trailing: Text("\$${product?.price ?? ''}"),
            );

          },
          ),
        ),
        bottomNavigationBar:BottomNavigation(),
    );
  }
}
