import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/products_card.dart';
import 'package:test_ui/models/booksApi.dart';

class ProductResponse extends StatelessWidget {
  const ProductResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Books>(
          future: fetchBooks(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final books = snapshot.data!;
              return Expanded(
                  child:SizedBox(
                    height: 300.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: books.items.length,
                      itemBuilder: (context, index) {
                        final volume = books.items[index];
                        return ProductsCard(books: books);
                      },
                ),
              ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            return Center(child: CircularProgressIndicator());
          },
        );

  }
}



// ...List.generate(
// booksProducts.length,
// (index) {
// if (booksProducts[index].isPopular)
// return ProductsCard(product: booksProducts[index]);
// return SizedBox.shrink();
// },
// ),



// Books Response for Cards
// ListTile(
// title: Text(volume.volumeInfo.title),
// subtitle: Text(volume.volumeInfo.publisher?? ''),
// // volumeInfo.authors.join(', ')
// );