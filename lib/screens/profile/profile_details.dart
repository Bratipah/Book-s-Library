import 'package:flutter/material.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String title;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.lightBlueAccent,
            size: 20,
          ),
          SizedBox(width:0.5),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
