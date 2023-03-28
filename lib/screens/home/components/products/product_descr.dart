import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';

class ProductDescr extends StatelessWidget {
  ProductDescr({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              itemCount: books.items.length,
              itemBuilder: (context, index) {
                final volume = books.items[index];
                return Text(
                  volume.volumeInfo.title,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent[400]),
                );
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Container(
                //     padding: EdgeInsets.all(15),
                //     width: 64,
                //     child: Icon(
                //       Icons.check_circle_sharp,
                //       color: volume.volumeInfo.readingModes.text
                //           ? Color(0xFFFF4848)
                //           : Colors.white,
                //       size: 20,
                //     ),
                //   ),
                // );
                // SizedBox(height: 20);
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: 20,
                //     right: 64,
                //   ),
                //   child: Text(
                //     volume.volumeInfo.subtitle ?? '',
                //     maxLines: 3,
                //     style: TextStyle(color: Colors.black),
                //   ),
                // );
              }),
        ),
      ],
    );
  }
}
