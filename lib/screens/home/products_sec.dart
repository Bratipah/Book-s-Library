import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';
import 'package:test_ui/models/product_response.dart';

class ProductsSec extends StatelessWidget {
  ProductsSec({
    Key? key,
  }) : super(key: key);

  late Books books;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    books = Books();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: books.items.length,
            itemBuilder: (context, index) {
              final volume = books.items[index];
              return ProductResponse();
            },
          ),
        ],
      ),
      // ProductsCard(books: ,),
    );
  }
}
