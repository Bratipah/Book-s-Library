import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/products/product_images.dart';
import 'package:test_ui/screens/home/components/products/product_descr.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
        ProductImages(product: product),
        Container(
        padding: EdgeInsets.only(top: 20.0),
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: 500.0,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          )
        ),
        child: Column(children: [
        ProductDescr(
        product: product,
        ),
        ]),
        ),
    ],
    );
  }
}
