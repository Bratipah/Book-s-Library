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
        SizedBox(width: 20),
        CategoryCard(
          image: 'assets/images/pexels-pixabay-256450.jpg',
          category: "Fantasy",
          title: "The Lion, the Witch and the Wardrobe",
        ),
        SizedBox(width: 20),
        CategoryCard(
          image: 'assets/images/pexels-olga-10178659.jpg',
          category: "Fiction",
          title: "Grant the guarantor",
        ),
        SizedBox(width: 20),
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
          onTap: (){},
          child: SizedBox(
            width: 210,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.10),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:5.0,
                      vertical: 10,
                    ),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text:"$title"
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                // Padding(
                //   padding: EdgeInsets.symmetric( vertical:10.0),
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
