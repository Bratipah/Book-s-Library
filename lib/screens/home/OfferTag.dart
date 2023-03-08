import 'package:flutter/material.dart';

class OfferTag extends StatelessWidget {
  const OfferTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(10),
          ),
          ),
        Positioned(
          right: -50,
            top: -40,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(width: 15,color: Colors.white)
              ),
            )),
        Positioned(
            left: -50,
            bottom: -30,
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 10,color: Colors.white)
              ),
            )),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(top: 17),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 20,
                    child: Icon(Icons.currency_exchange_sharp,size: 30,color: Colors.orangeAccent,)
                ),
                SizedBox(
                  height: 15,
                  width: 3,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '10% Discount!! Selected',// the Text
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),  //text color
                    ),
                    Text(
                      'While Offer Lasts.....',// the Text
                      style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic,fontWeight:FontWeight.w800,color:Colors.black.withOpacity(0.6)),  //text color
                    ),

                  ],
                )
              ],
            )
        )


      ],
    );
  }
}
