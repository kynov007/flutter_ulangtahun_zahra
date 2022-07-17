import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({
    Key? key,
    required this.title,
    required this.IMGurl,
  }) : super(key: key);

  final String title;
  final String IMGurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(IMGurl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title)
      ],
    );
  }
}
