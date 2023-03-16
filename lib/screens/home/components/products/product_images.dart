import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 280,
          child: AspectRatio(
            aspectRatio: 1.02,
              child: ListView.builder(
                itemCount: books.items.length,
                itemBuilder: (context, index) {
                  final volume = books.items[index];
                  return Hero(
                      tag: volume.kind,
                      child:Image.network(volume.volumeInfo.imageLinks.thumbnail),
                  );
                },
              ),
          ),
        ),
      ],
    );
  }
}
