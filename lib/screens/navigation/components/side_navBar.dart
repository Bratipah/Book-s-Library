import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    children: [
    UserAccountsDrawerHeader(
    accountName: Text("John Doe"),
    accountEmail: Text("Johndoe@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundImage: AssetImage("assets/images/2428085.jpg")),
    ),
    ListTile(
    leading: Icon(Icons.home),
    title: Text('Home'),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.search_sharp),
    title: Text('Search'),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.library_books_sharp),
    title: Text('Library'),
    onTap: () {},
    ),
    Padding(padding: EdgeInsets.all(143.0)),
    ListTile(
    leading: Icon(Icons.message_sharp),
    title: Text('Text Us'),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.call_sharp),
    title: Text('Call Us'),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.mail_sharp),
    title: Text('Email Us'),
    onTap: () {},
    ),
    ],
    ),
    );
  }
}
