import 'package:flutter/material.dart';
import 'package:test_ui/models/books.dart';
import 'package:test_ui/models/product_response.dart';
import 'package:test_ui/screens/home/util.dart';

class DetailsAppbar extends StatelessWidget {
   const DetailsAppbar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Volume volume = Volume();
    VolumeInfo volumeInfo = VolumeInfo();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 40,
              width: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 20,
                  color: Colors.blueAccent[400],
                ),
              ),
            ),
            Spacer(),
            Flexible(
              fit: FlexFit.loose,
              child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        volume.volumeInfo.averageRating.toStringOrNull() ?? "",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.star_half_sharp,
                        size: 15,
                      )
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
