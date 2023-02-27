import 'package:flutter/material.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/models/Product.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 130,
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            ProductScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.01,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.image,fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
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
                        color: product.isFinished
                            ? Color(0xFFFF7643).withOpacity(0.15)
                            : Color(0xFF979797).withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.check_circle_sharp,
                        color: product.isFinished
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
