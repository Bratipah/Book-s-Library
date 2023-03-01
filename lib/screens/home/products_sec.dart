import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';

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
              ...List.generate(
                booksProducts.length,
                (index) {
                  if (booksProducts[index].isPopular)
                    return ProductsCard(product: booksProducts[index]);
                  return SizedBox.shrink();
                },
              ),
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
