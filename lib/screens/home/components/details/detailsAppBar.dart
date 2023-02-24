import 'package:flutter/material.dart';
import 'package:test_ui/models/Product.dart'

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({
    Key? key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: Colors.blue[50],
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 15,
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    product.rating,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.star_half_sharp),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
