import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';
import 'package:test_ui/screens/library/library_card.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/booksApi.dart';
// import 'package:test_ui/models/product_response.dart';

class LibraryPage extends StatelessWidget {
  // LibraryPage({
  //   Key? key,
  //   required this.books,
  // }) : super(key: key);
  //
  // final Books books;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: const Text('Library Page'),
            leading: IconButton(icon:
            Icon(
                Icons.arrow_back_ios_new_sharp),
                onPressed: () {
                 Navigator.pop(context);
                },
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: FutureBuilder<Books>(
              future: fetchBooks(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final books = snapshot.data!;
                  return LibraryCard(books: books);
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          bottomNavigationBar: BottomNavigation(),
        ),

    );
  }
}

