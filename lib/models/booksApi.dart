import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:test_ui/models/serializers.dart';
import 'package:test_ui/models/books.dart';

const String baseurl = 'https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=AIzaSyAh80fc79LithOxxHQH2Gx1wOhOIzWyvYw';

Future<Books> fetchBooks() async {
  final response = await http.get(Uri.parse(baseurl));

  final jsonBody = json.decode(response.body);
  return serializers.deserializeWith(Books.serializer, jsonBody)!;
}


