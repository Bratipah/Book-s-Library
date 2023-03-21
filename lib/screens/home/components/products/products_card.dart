import 'package:flutter/material.dart';
import 'package:test_ui/screens/home/components/products/product_screen.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/booksApi.dart';
import 'package:test_ui/models/product_response.dart';
import 'package:test_ui/routes.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: books.items.length,
          itemBuilder: (context, index) {
            final volume = books.items[index];
            return AspectRatio(
              aspectRatio: 1.01,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Hero(
                  tag: volume.id,
                  child: Image.network(volume.volumeInfo.imageLinks.thumbnail,
                      fit: BoxFit.cover),
                ),
              ),
            );
          },
        ));

    // }
    //
    // )
    //
    // );
// return AspectRatio(
//   aspectRatio: 1.01,
//   child: Container(
//     padding: EdgeInsets.all(10),
//     child: Hero(
//       tag: volume.id,
//       child: Image.network(
//           volume.volumeInfo.imageLinks.thumbnail, fit: BoxFit.cover),
//
//     ),
//   ),
// );
// const SizedBox(height: 3);
// Text(
//   volume.volumeInfo.title,
//   style: TextStyle(color: Colors.black),
//   maxLines: 2,
// );
// Row(
//
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         "\$${volume.kind}",
//         style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w800,
//           color: Color(0xFFFF7643),
//         ),
//       ),
//       InkWell(
//         borderRadius: BorderRadius.circular(30),
//         onTap: () {},
//         child: Container(
//           padding: EdgeInsets.all(2),
//           height: 30,
//           width: 30,
//           decoration: BoxDecoration(
//             color: volume.volumeInfo.readingModes.text ? Color(0xFFFF7643).withOpacity(0.15) : Color(0xFF979797).withOpacity(0.3),
//             shape: BoxShape.circle,
//           ),
//           child: Icon(Icons.check_circle_sharp,
//             color: volume.volumeInfo.readingModes.text ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
//           ),
//         ),
//       ),
//     ]
// );
// },
// );
// return Row(
//     children: [
//
//     ],
//
// );
  }
}
