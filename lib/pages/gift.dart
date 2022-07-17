import 'package:flutter/material.dart';
import 'package:flutter_web/pages/gift/title_gift.dart';
import 'package:flutter_web/pages/widget/card_photo.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'register_web.dart';
import 'regiter_webview.dart' if (dart.library.html) 'register_web.dart';

class hadiah extends StatefulWidget {
  const hadiah({Key? key}) : super(key: key);

  @override
  State<hadiah> createState() => _hadiahState();
}

class _hadiahState extends State<hadiah> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerweb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Landing_Page2.png'), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      width: 800,
                      height: 500,
                      // color: Colors.amber,
                      child: WebView(
                        initialUrl:
                            'https://www.mixcloud.com/widget/iframe/?light=1&feed=%2Fmuhammad-dicky-novaldi%2Fulang-tahun-zahra%2F',
                        javascriptMode: JavascriptMode.unrestricted,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 2100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat ulang tahun sayang 🎂',
                            style: GoogleFonts.rubikMonoOne(
                              textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Maaf cuma bisa kasih ini, semoga kamu suka ya love u 💕\nIni ada beberapa foto foto kita selama ini 😘 ',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                card(
                                    title: 'Ini awal kita bertemu',
                                    IMGurl: 'fotoawal.PNG'),
                                card(
                                  title: 'Ini ketika kita jadian',
                                  IMGurl: 'fotosemiawal.JPG',
                                ),
                                card(
                                  title: 'Ketika kamu wisudah',
                                  IMGurl: 'assets/foto2.jpg',
                                ),
                                card(
                                  title: 'Ketika aku wisudah',
                                  IMGurl: 'fotobaru.jpeg',
                                ),
                                card(
                                  title: 'kita telah melewati ini semua',
                                  IMGurl: 'assets/foto4.JPEG',
                                ),
                                card(
                                  title: 'Mengikuti Lombah bersama',
                                  IMGurl: 'assets/foto5.JPEG',
                                ),
                                card(
                                  title: 'Mencapai apa yang kita impikan',
                                  IMGurl: 'assets/foto6.JPEG',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 400,
                          ),
                          SingleChildScrollView(
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'HINGGA AKU INGIN KAU MENJADI ISTRI KU',
                                    style: GoogleFonts.alegreya(
                                        textStyle: TextStyle(fontSize: 50)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: 500,
                                    height: 800,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/foto7.JPG'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
