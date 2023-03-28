import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/HomePage.dart';
import 'package:test_ui/screens/home/components/products/detailsBody.dart';
import 'package:test_ui/screens/home/components/products/detailsAppBar.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      //   child: DetailsAppbar(books: books),
      // ),
      body: DetailsBody(books: agrs.books),
    );
  }
}

class ProductDetailsArguments {
 final Books books;

  ProductDetailsArguments({required this.books});
}

