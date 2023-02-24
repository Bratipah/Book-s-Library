import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/details/detailsBody.dart';
import 'package:test_ui/screens/home/components/details/detailsAppBar.dart';

class ProductCard extends StatelessWidget {
  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

