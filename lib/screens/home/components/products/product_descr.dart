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
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blueAccent[400] ),
        ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
              color:
              product.isFinished ? Color(0xFFFFE6E6) : Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(Icons.check_circle_sharp,
              color:
              product.isFinished ? Color(0xFFFF4848) : Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.description,
            maxLines: 3,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
