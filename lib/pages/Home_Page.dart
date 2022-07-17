import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/pages/title.dart';
import 'package:flutter_web/pages/gift.dart';
import 'package:flutter_web/pages/register_web.dart';

import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'logo.dart';

import 'regiter_webview.dart' if (dart.library.html) 'register_web.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // late VideoPlayerController _controller;
  // Future<void>? _initialzeVideo;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerweb();
    // _controller = VideoPlayerController.network(
    //     'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
    // _initialzeVideo = _controller.initialize();
    // _controller.setLooping(true);
    // _controller.setVolume(1.0);

    // buat bikin video //
  }

  @override
  // void dispose() {
  //   _controller.dispose();
  //   // TODO: implement dispose
  //   super.dispose();
  // }

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
          logo(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 70),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  titlePage(),
                  Container(
                    width: 800,
                    height: 500,
                    // color: Colors.amber,
                    child: WebView(
                      initialUrl:
                          'https://my.spline.design/cakecopy-852044d76480bc6a0d624454b9195a02/',
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => hadiah()));
                      },
                      icon: Icon(
                        Icons.wallet_giftcard_outlined,
                        size: 50,
                      ),
                      label: Text(''),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 500,
                    //   height: 100,
                    //   child: VideoPlayer(_controller),
                    // ),
                    // Container(
                    //   width: 500,
                    //   height: 100,
                    //   child: ElevatedButton.icon(
                    //     onPressed: () {
                    //       setState(() {
                    //         if (_controller.value.isPlaying) {
                    //           _controller.pause();
                    //         } else {
                    //           _controller.play();
                    //         }
                    //       });
                    //     },
                    //     icon: Icon(
                    //       Icons.play_arrow_rounded,
                    //       size: 50,
                    //     ),
                    //     label: Text(''),
                    //   ),
                    // ),

                    // widget untuk buat video//
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
