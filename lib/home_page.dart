// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = const AssetImage("lib/assets/images/one.png");
  AssetImage two = const AssetImage("lib/assets/images/two.png");
  AssetImage three = const AssetImage("lib/assets/images/three.png");
  AssetImage four = const AssetImage("lib/assets/images/four.png");
  AssetImage five = const AssetImage("lib/assets/images/five.png");
  AssetImage six = const AssetImage("lib/assets/images/six.png");

  AssetImage dice1 = AssetImage('');
  AssetImage dice2 = AssetImage('');
  @override
  void initState() {
    super.initState();
    setState(() {
      dice1 = one;
      dice2 = one;
    });
  }

  void diceroll() {
    AssetImage Rdice1 = AssetImage('');
    AssetImage Rdice2 = AssetImage('');
    var rndDice1 = (1 + (Random().nextInt(100)) % 6);
    var rndDice2 = (1 + Random().nextInt(6));

    switch (rndDice1) {
      case 1:
        Rdice1 = one;
        break;
      case 2:
        Rdice1 = two;
        break;
      case 3:
        Rdice1 = three;
        break;
      case 4:
        Rdice1 = four;
        break;
      case 5:
        Rdice1 = five;
        break;
      case 6:
        Rdice1 = six;
        break;
    }

    switch (rndDice2) {
      case 1:
        Rdice2 = one;
        break;
      case 2:
        Rdice2 = two;
        break;
      case 3:
        Rdice2 = three;
        break;
      case 4:
        Rdice2 = four;
        break;
      case 5:
        Rdice2 = five;
        break;
      case 6:
        Rdice2 = six;
        break;
    }
    setState(() {
      dice1 = Rdice1;
      dice2 = Rdice2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Color.fromARGB(255, 242, 176, 61),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 20, top: 60),
                  child: Image(
                    width: 100,
                    height: 200,
                    image: dice1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 40, top: 60),
                  child: Image(
                    width: 100,
                    height: 200,
                    image: dice2,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: diceroll,
              child: Text('Roll'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  primary: Color.fromARGB(255, 242, 176, 61),
                  elevation: 10),
            )
          ],
        ),
      ),
    );
  }
}
