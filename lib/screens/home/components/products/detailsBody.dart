import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/product_images.dart';
import 'package:test_ui/screens/home/components/products/product_descr.dart';

class DetailsBody extends StatelessWidget {
  DetailsBody({
    Key? key,
  }) : super(key: key);

  late List<Volume> volume;

  @override
  Widget build(BuildContext context) {
    Volume volume = Volume();
    Books books = Books();
    return SingleChildScrollView(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 300,
            child:
            Align(child: Text("gsa"),),
            //  ProductImages(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30.0),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height:  MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child:
            // const Text("gsa"),
            ProductDescr(),
            // ]),
          ),
        ],
      ) ,
    );
  }
}
