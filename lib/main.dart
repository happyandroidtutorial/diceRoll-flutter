import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.import_contacts))
        // ],
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var randomNumber = 1;
  var ritRandom = 2;

  void changeTheDiceNumber() {
    setState(() {
      ritRandom = Random().nextInt(4) + 1;
      randomNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Random().nextInt(3);
    //var number;
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  changeTheDiceNumber();
                  //setState(() {

                  //   randomNumber = Random().nextInt(4) + 1;
                  //   ritRandom = Random().nextInt(4) + 1;
                  // });
                },
                child: Image.asset(
                  'assets/images/dice_${randomNumber}.png',
                  width: 100,
                  height: 200,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  changeTheDiceNumber();
                  // setState(() {
                  //   ritRandom = Random().nextInt(4) + 1;
                  //   randomNumber = Random().nextInt(4) + 1;
                  // });
                },
                child: Image.asset(
                  'assets/images/dice_${ritRandom}.png',
                  width: 100,
                  height: 200,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
