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
  final bool isPopular;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.author,
    required this.description,
    this.rating = 4.0,
    this.price = 20.00,
    this.isFinished = true,
    this.isPopular = true,
  });
}

List<Product> booksProducts = [
  Product(
      id: 1,
      title: "Thinking Fast & Slow",
      image: "assets/images/ahmed-almakhzanji-kshkB1i5_5o-unsplash.jpg",
      author: "Daniel Kahneman",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 40.00,
      rating: 4.0,
      isFinished: false,
      isPopular: true,
  ),
  Product(
      id: 2,
      title: "Milk and Honey",
      image: "assets/images/sincerely-media-CXYPfveiuis-unsplash.jpg",
      author: "Rupi Kaur",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 60.00,
      rating: 5.0,
      isFinished: true,
      isPopular: true,
  ),
  Product(
      id: 3,
      title: "The Odyssey Homer",
      image: "assets/images/tbel-abuseridze-vhUQqymqGZ4-unsplash.jpg",
      author: "Teray Wilson",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 30.00,
      rating: 2.0,
      isFinished: true,
      isPopular: true,
  ),
  Product(
      id: 4,
      title: "How Innovation Works",
      image: "assets/images/matt-ridley-H-LIL57PHCc-unsplash.jpg",
      author: "Matt Riddley",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 70.00,
      rating: 5.0,
      isFinished: false,
      isPopular: true,
  ),
  Product(
      id: 5,
      title: "The Order of Phoenix",
      image: "assets/images/madalyn-cox-YoKjxdb7XLU-unsplash.jpg",
      author: "J.K Rowling",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 50.00,
      rating: 3.0,
      isFinished: true,
      isPopular: true,
  ),
  Product(
      id: 6,
      title: "Your Soul is a River",
      image: "assets/images/thought-catalog-DxAzOKSiPoE-unsplash.jpg",
      author: "Nikita Gill",
      description: 'At a time he didnt found anything good Gail wrote of where he perserved through positivity',
      price: 60.00,
      rating: 2.0,
      isFinished: true,
      isPopular: true,
  ),
];