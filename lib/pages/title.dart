import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class titlePage extends StatelessWidget {
  const titlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Lottie.network(
              'https://assets10.lottiefiles.com/private_files/lf30_kkceplqe.json',
              fit: BoxFit.fill,
              width: 700,
              height: 200),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200 / 2),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 235, 193, 95).withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                  image: AssetImage('image.jpeg'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Zahra Firdaus',
            style: GoogleFonts.dancingScript(
              textStyle: TextStyle(
                color: Color(0xffC9755B),
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '23',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 30),
              color: Color(0xffC9755B),
            ),
          ),
        ],
      ),
    );
  }
}
