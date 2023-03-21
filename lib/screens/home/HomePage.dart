import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/Navigation.dart';
import 'package:test_ui/screens/home/category_sec.dart';
import 'package:test_ui/screens/home/OfferTag.dart';
import 'package:test_ui/screens/home/products_sec.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Books Available",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent)),
                ),
                // ProductsSec(),
                SizedBox(
                  height: 20,
                ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
