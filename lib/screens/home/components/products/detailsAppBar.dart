import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';

class DetailsAppbar extends StatelessWidget {

  const DetailsAppbar({
    Key? key,
    required this.books,
  }) : super(key: key);
  final Books books;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: Colors.blue[50],
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 15,
                  color: Colors.blue[50],
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
              ListView.builder(
              itemCount: books.items.length,
                itemBuilder: (context, index) {
                  final volume = books.items[index];
                  return Text(
                    volume.volumeInfo.averageRating.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
                  const SizedBox(width: 5),
                  Icon(Icons.star_half_sharp,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
