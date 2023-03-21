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
    books = Books();
    return  Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductResponse(),
              ],

    );
  }
}
