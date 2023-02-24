import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart'
import 'package:test_ui/screens/home/product_card.dart'

class BookProducts extends StatelessWidget {
  const BookProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Row(
            children: [
              ...List.generate(length, (index) =>
                  if (bookProducts[index].isFinished)
                    return ProductCard()
              )
            ],
          ),
        )
      ],
    );
  }
}
