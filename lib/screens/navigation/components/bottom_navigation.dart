import 'package:flutter/material.dart';
// import 'package:test_ui/screens/home/HomePage.dart';
import 'package:test_ui/screens/library/library_page.dart';
import 'package:test_ui/screens/searches/SearchPage.dart';
import 'package:test_ui/screens/profile/ProfilePage.dart';

class BottomNavigation extends StatefulWidget {
  // const BottomNavigation({
  //   Key? key,
  //   required this.books,
  // }) : super(key: key);
  // final Books books;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    // IconButton(
    // icon: Icon(Icons.home_sharp),
    // onPressed: () {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
    // },
    // ),
    Builder(
    builder: (context) => IconButton(
    icon: Icon(Icons.library_books_sharp),
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LibraryPage()));
    },
    )),
    IconButton(
    icon: Icon(Icons.search_sharp),
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
    },
    ),
    IconButton(
    icon: Icon(Icons.person_sharp),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
    }
    )
    ],
    ),
    elevation: 3,
    );
  }
}
