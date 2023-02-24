import 'package:flutter/material.dart';
import 'package:test_ui/screens/Navigation.dart';
import 'package:test_ui/screens/home/category_sec.dart';
import 'package:test_ui/screens/home/OfferTag.dart';
import 'package:test_ui/screens/home/products_sec.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 5.0, right: 5.0),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Welcome,'),
                        Text('Books Library'),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/book.png'))),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Browse Category",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                    Text("view all",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blueAccent,
                            decorationStyle: TextDecorationStyle.double,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.6))),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: CategorySec(),
                ),
                SizedBox(
                  height: 50,
                ),
                OfferTag(),
                SizedBox(
                  height: 20,
                ),
                ProductsSec(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
