import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/details/product_images.dart';
import 'package:test_ui/screens/home/components/details/product_descr.dart';
import 'package:test_ui/screens/home/components/details/top_rounded_container.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({
    Key? key,
    required this.product

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       ProductImages(
         product: product
       ),
        TopRoundContainer(
          color: Colors.white,
          child: Column(
            ProductDescr(
              product: product,
            ),
            )
          )
        )
      ],
    );
  }
}
