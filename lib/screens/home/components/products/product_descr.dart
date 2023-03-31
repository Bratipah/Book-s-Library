import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/util.dart';


class ProductDescr extends StatefulWidget {
  const ProductDescr({
    Key? key,
  }) : super(key: key);


  @override
  State<ProductDescr> createState() => _ProductDescrState();
}

class _ProductDescrState extends State<ProductDescr> {
  int selectedDescr = 0;
  final books = Books();
  late List<Volume> volume;


  @override
  void initState() {
    super.initState();

    volume = books.items .toList();
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              volume[selectedDescr].volumeInfo.title ?? '',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent[400]),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 54,
              ),
              child: Text(
                volume[selectedDescr].volumeInfo.subtitle?? '',
                maxLines: 3,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 40,
                width: 64,
                decoration: BoxDecoration(
                  color: volume[selectedDescr].volumeInfo.readingModes?.text ?? false
                      ? const Color(0xFFFF7643).withOpacity(0.15)
                      : const Color(0xFF979797).withOpacity(0.3),
                  shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.menu_book,
                  color: volume[selectedDescr].volumeInfo.readingModes?.text ?? false
                      ? Color(0xFFFF4848)
                      : Color(0xFFDBDEE4),
                ),
              ),
            ),
          ],
        ),
    );
  }

}

