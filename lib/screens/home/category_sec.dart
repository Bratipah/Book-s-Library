import 'package:flutter/material.dart';

class CategorySec extends StatelessWidget {
  const CategorySec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoryCard(
          image: 'assets/images/pexels-lisa-fotios-734968.jpg',
          category: "Fiction",
          title: "The Gypsy and the ants",
        ),
        CategoryCard(
          image: 'assets/images/pexels-pixabay-256450.jpg',
          category: "Fiction",
          title: "The happy day of there",
        ),
        CategoryCard(
          image: 'assets/images/pexels-olga-10178659.jpg',
          category: "Fiction",
          title: "Grant the guarantor",
        ),
        CategoryCard(
          image: 'assets/images/pexels-thought-catalog-904620.jpg',
          category: "Fiction",
          title: "Better Today",
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String category;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 210,
                  height: 110,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(children: [Text("$category\n"), Text("$title")])
              ],
            ),
            elevation: 5,
            margin: EdgeInsets.only(right: 13.0, left: 15.0, top: 25.0),
          ),
        ),
        SizedBox(
            height: 50
        ),
      ],
    );
  }
}
