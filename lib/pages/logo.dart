import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({Key? key}) : super(key: key);

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 72,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('logo.png'),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
