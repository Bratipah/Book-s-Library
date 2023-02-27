import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/details/detailsBody.dart';
import 'package:test_ui/screens/home/components/details/detailsAppBar.dart';


class ProductScreen extends StatelessWidget {
  static String routeName = "/product";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: DetailsAppbar(rating: agrs.product.rating),
      ),
      body: DetailsBody(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

