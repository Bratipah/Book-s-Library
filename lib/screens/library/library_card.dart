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
    return ListView.builder(
      shrinkWrap: true,
      itemCount: books.items.length,
      itemBuilder: (context, index) {
        final volume = books.items[index];
        return Card(
          margin: const EdgeInsets.all(10),
          elevation: 5,
          child: InkWell(
            splashColor: Colors.lightBlueAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(books: books),
                  // Pass the arguments as part of the RouteSettings. The
                  // productScreen reads the arguments from these settings.
                  settings: RouteSettings(
                    arguments: ProductDetailsArguments(books: books),
                  ),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  leading: Hero(
                    tag: 'book',
                    child: Image.network(
                      volume.volumeInfo.imageLinks.smallThumbnail ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    volume.volumeInfo.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                      Text(volume.volumeInfo.publisher ?? ''),
                      Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                      Text("Pages:" + volume.volumeInfo.pageCount.toString()),
                    ],
                  ),
                  trailing: Icon(Icons.star_half_sharp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Padding(
// padding: const EdgeInsets.symmetric(vertical: 5.0),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Expanded(
// flex: 2,
// child: Hero(
// tag: 'book',
// child: Image.network(
// volume.volumeInfo.imageLinks.smallThumbnail ?? '',
// fit: BoxFit.cover,
// ),
// ),
// ),
// Expanded(
// flex: 3,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Text(
// volume.volumeInfo.title,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
// Text(volume.volumeInfo.publisher ?? ''),
// Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
// Text("Pages:" + volume.volumeInfo.pageCount.toString()),
// ],
// ),
// ),
// const Icon(
// Icon(Icons.star_half_sharp),
// size: 16.0,
// ),
// ]
// ),
// );
