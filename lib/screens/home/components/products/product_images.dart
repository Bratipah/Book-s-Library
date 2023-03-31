import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
  }) : super(key: key);


  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  final books = Books();
  late List<Volume> volume;

  Duration get defaultDuration => const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    volume = books.items.toList()!!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: 200,
            child: AspectRatio(
              aspectRatio: 0.8,
              child: Hero(
                tag: volume[selectedImage].id ?? '',
                child: Image.network(
                    volume[selectedImage].volumeInfo.imageLinks?.thumbnail ?? ''),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
  }
}
