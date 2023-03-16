import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/screens/home/components/products/product_images.dart';
import 'package:test_ui/screens/home/components/products/product_descr.dart';

class DetailsBody extends StatelessWidget {
  final Books books;
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  DetailsBody({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
        ProductImages(books: books),
        Container(
        padding: EdgeInsets.only(top: 20.0),
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: 500.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          )
        ),
        child: Column(
            children: [
              ProductDescr(
              books: books,
            ),
              Text('$_currentSliderValue'),
              CupertinoSlider(
                key: const Key('slider'),
                value: _currentSliderValue,
                // This allows the slider to jump between divisions.
                // If null, the slide movement is continuous.
                divisions: 5,
                // The maximum slider value
                max: 100,
                activeColor: CupertinoColors.systemBlue,
                thumbColor: CupertinoColors.systemBlue,
                // This is called when sliding is started.
                onChangeStart: (double value) {
                    _sliderStatus = 'Sliding';
                },
                // This is called when sliding has ended.
                onChangeEnd: (double value) {
                    _sliderStatus = 'Finished sliding';
                },
                // This is called when slider value is changed.
                onChanged: (double value) {
                    _currentSliderValue = value;
                },
              ),
              Text(
                _sliderStatus ?? '',
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 12,
                ),
              ),
        ]
        ),
        ),
    ],
    );
  }
}
