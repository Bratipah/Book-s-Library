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
              // return Flexible(
              //       child:
              debugPrint('the volumes are $books');
              return ProductsCard(books: books);
              // return SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   height: 100,
              //   child:ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemCount: books.items.length,
              //     itemBuilder: (context, index) {
              //       final volume = books.items[index];
              //
              //      // return Text(volume.kind ?? 'it is nullable');
              //
              //
              //     },
              //   ),
              // );


            //  );
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