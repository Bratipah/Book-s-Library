import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/detailsBody.dart';
import 'package:test_ui/screens/home/components/products/detailsAppBar.dart';


class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // final _mediaQuery = MediaQuery.of(context).size.width -20;
    final ProductDetailsArguments agrs = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return   Scaffold(
        backgroundColor: Colors.blue[100],
        appBar:  const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: DetailsAppbar(),
        ),
        body: DetailsBody(),

    );

  }
}

class ProductDetailsArguments {
 late Books books;

  ProductDetailsArguments({required this.books});
}

