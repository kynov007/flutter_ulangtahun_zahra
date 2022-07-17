import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter_web/pages/Home_Page.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  String description = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('cosmic.jpg'), fit: BoxFit.cover),
          // ),
          child: Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_FhFjqS.json',
              fit: BoxFit.fill),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    child: TimeCircularCountdown(
                      unit: CountdownUnit.second,
                      countdownTotal: 15,
                      diameter: 300,
                      countdownCurrentColor: Colors.amber,
                      countdownRemainingColor: Colors.purple,
                      onUpdated: (unit, remainingTime) {
                        setState(() {
                          description =
                              'Update : ${_formatTime(unit, remainingTime)}';
                        });
                      },
                      onFinished: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homePage(),
                          ),
                        );
                      },
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  String _formatTime(CountdownUnit unit, int remainingTime) =>
      '$remainingTime ${describeEnum(unit)}${remainingTime > 1 ? 's' : ''}';
}
