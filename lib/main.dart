import 'package:flutter/material.dart';
import 'package:flutter_web/pages/gift.dart';
import 'package:flutter_web/pages/regiter_webview.dart';
import 'package:flutter_web/pages/splash.dart';

import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
