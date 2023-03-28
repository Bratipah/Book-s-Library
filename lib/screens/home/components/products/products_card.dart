import 'package:flutter/material.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/booksApi.dart';
import 'package:test_ui/models/product_response.dart';
import 'package:test_ui/routes.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 130,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductScreen(
                  books: books,
                ),
                // Pass the arguments as part of the RouteSettings. The
                // productScreen reads the arguments from these settings.
                settings: RouteSettings(
                  arguments: ProductDetailsArguments(books: books),
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Flexible(
              //   fit: FlexFit.loose,
              ListView.builder(
                shrinkWrap: true,
                itemCount: books.items.length,
                itemBuilder: (context, index) {
                  final volume = books.items[index];
                  return AspectRatio(
                    aspectRatio: 1.01,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Hero(
                        tag: volume.kind,
                        child: Image.network(
                            volume.volumeInfo.imageLinks.thumbnail,
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                  const SizedBox(height: 3);
                  Text(
                    volume.volumeInfo.title,
                    style: TextStyle(color: Colors.black),
                    maxLines: 2,
                  );
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${volume.kind}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFFF7643),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(2),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: volume.volumeInfo.readingModes.text
                                  ? Color(0xFFFF7643).withOpacity(0.15)
                                  : Color(0xFF979797).withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.check_circle_sharp,
                              color: volume.volumeInfo.readingModes.text
                                  ? Color(0xFFFF4848)
                                  : Color(0xFFDBDEE4),
                            ),
                          ),
                        ),
                      ]);
                },
              ),
              // ),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}
