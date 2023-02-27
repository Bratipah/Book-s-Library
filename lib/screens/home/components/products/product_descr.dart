import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';

class ProductDescr extends StatelessWidget {
  const ProductDescr({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          product.title,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.black12 ),
        ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
              color:
              product.isFinished ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(Icons.check_circle_sharp,
              color:
              product.isFinished ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              size: 16,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
