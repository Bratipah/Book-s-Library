import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';
import 'package:test_ui/models/product_response.dart';

class ProductsSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductResponse(),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
