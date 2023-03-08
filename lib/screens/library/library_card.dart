import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Hero(
          tag: product.id .toString(),
          child: Card(
            elevation: 5,
            child: ListTile(
              selected: true,
              selectedColor: Colors.black,
              selectedTileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // productScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments:ProductDetailsArguments(product: product),
                    ),
                  ),
                );
              },
              leading: CircleAvatar(
                // radius: 40,
                child: Image.asset(product.image),
              ),
              title: Text(product.title),
              subtitle: Text(product.description),
              trailing: Text(
                "\$${product.price}",
                style:TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent[400],
                ) ,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
