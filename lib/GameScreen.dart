import 'package:flutter/material.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Color? brightYellow = Colors.yellow[700];
  Color? brightGreen = Colors.green[700];
  Color? brightBlue = Colors.blue[700];
  Color? brightRed = Colors.red[700];

  int randomNumberGenerator() {
    int randomNumber = Random().nextInt(4);
    print('$randomNumber');
    return randomNumber;
  }

  void brightColorSelector() {
    // if (randomNumberGenerator() == 0) {
    //   setState(() {
    //     brightYellow = Colors.yellow;
    //   });
    // } else if (randomNumberGenerator() == 1) {
    //   setState(() {
    //     brightGreen = Colors.green;
    //   });
    // } else if (randomNumberGenerator() == 2) {
    //   setState(() {
    //     brightBlue = Colors.blue;
    //   });
    // } else if (randomNumberGenerator() == 3) {
    //   setState(() {
    //     brightRed = Colors.red;
    //   });
    // }
    setState(() {
      if (randomNumberGenerator() == 0) {
        brightYellow = Colors.yellow;
      } else if (randomNumberGenerator() == 1) {
        brightGreen = Colors.green;
      } else if (randomNumberGenerator() == 2) {
        brightBlue = Colors.blue;
      } else if (randomNumberGenerator() == 3) {
        brightRed = Colors.red;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    brightColorSelector();
    // randomNumberGenerator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    randomNumberGenerator();
                  },
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: brightYellow,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: brightGreen,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    // color: Colors.blue[700],
                    color: brightBlue,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: brightRed,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
