import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';

class ProductResponse extends StatelessWidget {
  const ProductResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          booksProducts.length,
          (index) {
            if (booksProducts[index].isPopular)
              return ProductsCard(product: booksProducts[index]);
            return SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
