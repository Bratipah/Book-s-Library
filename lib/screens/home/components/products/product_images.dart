import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({
    Key? key,
    required this.books,
    this.volume,
    this.imageLinks,
  }) : super(key: key);

  final Books books;
  final imageLinks;
  final volume;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 280,
          child: AspectRatio(
            aspectRatio: 1.02,
            child: ListView.builder(
              itemCount: books.items.length,
              itemBuilder: (context, index) {
                final volume = books.items[index];
                return Hero(
                  tag: volume.id,
                  child:Image.network(volume.volumeInfo.imageLinks.thumbnail ?? ''),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}


// class ProductImages extends StatefulWidget {
//   const ProductImages({
//     Key? key,
//    required this.books,
//     this.volume,
//     this.imageLinks,
//   }) : super(key: key);
//
//   final Books books;
//   final imageLinks;
//   final volume;
//
//   @override
//   _ProductImagesState createState() => _ProductImagesState();
// }
//
// class _ProductImagesState extends State<ProductImages> {
//   int selectedImage = 0;
//   volume = books.items[index];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: 238,
//           child: AspectRatio(
//             aspectRatio: 1,
//             child: Hero(
//               tag: volume.id.toString(),
//               child: Image.network(volume.volumeInfo.imageLinks.thumbnail ?? ''[selectedImage]),
//             ),
//           ),
//         ),
//         // SizedBox(height: getProportionateScreenWidth(20)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 shrinkWrap: true,
//                 itemCount: books.items.length,
//                 itemBuilder: (context, index) {
//                   final volume = books.items[index];
//                 }),
//             // (index) => buildSmallProductPreview(index)),
//           ],
//         )
//       ],
//     );
//   }
//
//   GestureDetector buildSmallProductPreview(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: AnimatedContainer(
//         duration: defaultDuration,
//         margin: EdgeInsets.only(right: 15),
//         padding: EdgeInsets.all(8),
//         height: 48,
//         width: 48,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//               color: Colors.blueAccent
//                   .withOpacity(selectedImage == index ? 1 : 0)),
//         ),
//         child: Image.network(volume.volumeInfo.imageLinks.thumbnail ?? ''[index]),
//       ),
//     );
//   }
// }

// ListView.builder(
// itemCount: books.items.length,
// itemBuilder: (context, index) {
// final volume = books.items[index];
// return ;
// )
