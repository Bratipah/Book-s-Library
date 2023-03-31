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
              // debugPrint('the volumes are $books');
              return ProductsCard(books: books);
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            return const Center(child: CircularProgressIndicator());
          },
        );

  }
}
