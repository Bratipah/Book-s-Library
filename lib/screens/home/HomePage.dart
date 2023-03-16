import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/Navigation.dart';
import 'package:test_ui/screens/home/category_sec.dart';
import 'package:test_ui/screens/home/OfferTag.dart';
import 'package:test_ui/screens/home/products_sec.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          'Books Library',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
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
                  height: 40,
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
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
