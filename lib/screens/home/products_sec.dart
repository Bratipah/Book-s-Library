import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/details/product_card.dart';

class ProductsSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              "Books Available",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )
          ),
        ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          child: Row(
            children: [
              ...List.generate(
                  booksProducts.length, (index)
              ),
              SizedBox(width: 20,)
            ],
          ),
        )
      ],
    );
  }
}
