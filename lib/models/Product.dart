import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final String author;
  final image;
  final bool isFinished;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.author,
    required this.description,
    this.rating = 4.0,
    this.price = 20.00,
    this.isFinished = true,
  });
}

List<Product> booksProducts = [
  Product(
      id: 1,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 40.00,
      rating: 4.0,
      isFinished: false
  ),
  Product(
      id: 2,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 60.00,
      rating: 5.0,
      isFinished: false
  ),
  Product(
      id: 3,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 30.00,
      rating: 2.0,
      isFinished: false
  ),
  Product(
      id: 4,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 70.00,
      rating: 5.0,
      isFinished: false
  ),
  Product(
      id: 5,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 50.00,
      rating: 3.0,
      isFinished: false
  ),
  Product(
      id: 6,
      title: "Flowers",
      image: "",
      author: "Gail Saunders",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 60.00,
      rating: 2.0,
      isFinished: false
  ),
];