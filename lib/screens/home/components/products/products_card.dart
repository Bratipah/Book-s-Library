import 'package:flutter/material.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/booksApi.dart';
import 'package:test_ui/models/product_response.dart';
import 'package:test_ui/routes.dart';
import 'package:test_ui/screens/home/util.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 30,
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: books.items.length,
        itemBuilder: (context, index) {
          final volume = books.items[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(
                    ),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: ProductDetailsArguments(books: books),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Hero(
                      tag: volume.id ?? '',
                      child: Image.network(
                        volume.volumeInfo.imageLinks?.thumbnail ?? '',
                        fit: BoxFit.contain,
                        width: 100,
                        height: 200,
                      ),
                    ),
                    // ),
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      volume.volumeInfo.title?.take(15) ?? '',
                      style: TextStyle(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Row(
                      children: [
                        Text(
                          "${volume.volumeInfo.pageCount}\ pages",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFFF7643),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(2),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: volume.volumeInfo.readingModes?.text ?? false
                                  ? Color(0xFFFF7643).withOpacity(0.15)
                                  : Color(0xFF979797).withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.menu_book,
                              color: volume.volumeInfo.readingModes?.text ?? false
                                  ? Color(0xFFFF4848)
                                  : Color(0xFFDBDEE4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
