import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class titleGift extends StatelessWidget {
  const titleGift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 800,
      // color: Colors.amber,

      child: Text(
          'Selamat ulang tahun sayang, semoga panjang umur, semoga apa yang km mimpikan terwujud 🎂 .',
          style:
              GoogleFonts.slabo27px(textStyle: TextStyle(color: Colors.black))),
    );
  }
}
