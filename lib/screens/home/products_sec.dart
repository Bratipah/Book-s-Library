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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Books Available",
              style: TextStyle(
                fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent)),
        ),
        SizedBox(
          height: 10,
        ),
        ProductResponse(),
      ],
    );
  }
}
