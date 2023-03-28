import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';
import 'package:test_ui/models/product_response.dart';

class ProductsSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
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
        Container(
          width: MediaQuery.of(context).size.width,
          child:  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                // height: 200,
                width: 300,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      ProductResponse(),
                    SizedBox(
                      width: 80,
                    ),
                  ],
                ),
              )
          ),
        )
      ],
    );
  }
}
