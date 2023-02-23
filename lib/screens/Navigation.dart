import 'package:flutter/material.dart';
import 'package:test_ui/screens/HomePage.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books Library'),
      ),
      drawer: Drawer(
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
      ),
      body: Container(
        width: 800,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/6920933.jpg'))),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_sharp),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.library_books_sharp),
                      onPressed: () {
                      },
                    )),
            IconButton(
              icon: Icon(Icons.search_sharp),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person_sharp),
              onPressed: () {},
            )
          ],
        ),
        elevation: 3,
      ),
    );
  }
}
