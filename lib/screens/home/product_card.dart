import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.0)
            child: SizedBox(
        child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, routeName)
    ),

    ),
    );
  }
}
