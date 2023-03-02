import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/HomePage.dart';
import 'package:test_ui/screens/home/components/products/detailsBody.dart';
import 'package:test_ui/screens/home/components/products/detailsAppBar.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: DetailsAppbar(rating: agrs.product.rating ),
      ),
      body: DetailsBody(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
 final Product product;

  ProductDetailsArguments({required this.product});
}

