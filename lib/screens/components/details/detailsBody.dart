import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart'

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       ProductImages()
      ],
    );
  }
}
