import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       ListView.builder(
            itemCount: books.items.length,
            itemBuilder: (context, index) {
              final volume = books.items[index];
              return Hero(
                tag: volume.kind,
                child: Image.network(volume.volumeInfo.imageLinks.smallThumbnail?? ''),

              );
               ListTile(
                title: Text(volume.volumeInfo.title),
                subtitle: Text(volume.volumeInfo.publisher?? ''),
              );
              Card(
                elevation: 5,
                child: ListTile(
                  selected: true,
                  selectedColor: Colors.black,
                  selectedTileColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(books: books),
                        // Pass the arguments as part of the RouteSettings. The
                        // productScreen reads the arguments from these settings.
                        settings: RouteSettings(
                          arguments:ProductDetailsArguments(books: books),
                        ),
                      ),
                    );
                  },
                ),
              );
              }
          ),
      ]
    );
  }
}
