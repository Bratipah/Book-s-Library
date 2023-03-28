import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/product_images.dart';
import 'package:test_ui/screens/home/components/products/product_descr.dart';

class DetailsBody extends StatelessWidget {
  final Books books;

  DetailsBody({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 50,
        //   child: ProductImages(books: books),
        // ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          margin: EdgeInsets.only(top: 20.0),
          width: double.infinity,
          //height: 100.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: Column(children: [
            ProductDescr(
              books: books,
            ),
          ]),
        ),
      ],
    );
  }
}
