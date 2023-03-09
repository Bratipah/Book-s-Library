import 'package:flutter/material.dart';
import 'package:test_ui/models/booksApi.dart';
import 'package:test_ui/models/books.dart';

import 'dart:async';
import 'dart:convert';

class BooksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: FutureBuilder<Books>(
        future: fetchBooks(),
        builder: (context, snapshot) {
            if (snapshot.hasData) {
              final books = snapshot.data!;
              return ListView.builder(
                itemCount: books.items.length,
                itemBuilder: (context, index) {
                  final volume = books.items[index];
                  return ListTile(
                    title: Text(volume.volumeInfo.title),
                    subtitle: Text(volume.volumeInfo.authors.join(', ')),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}