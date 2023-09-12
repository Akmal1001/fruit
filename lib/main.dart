import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String fruitName = 'unknown';

  callback(fruitNameSet) {
    setState(() {
      fruitName = fruitNameSet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Chosen fruit is: ' + fruitName),
            backgroundColor: Colors.purple[700],
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ListView(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                fruitName,
                                style: TextStyle(
                                  fontSize: 72,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: ListView(
                    children: [
                      Center(
                        child: Column(children: [
                          FruitButton(callback: callback, fruitOrder: 1),
                          FruitButton(callback: callback, fruitOrder: 2),
                          FruitButton(callback: callback, fruitOrder: 3),
                          FruitButton(callback: callback, fruitOrder: 4),
                          FruitButton(callback: callback, fruitOrder: 5),
                          FruitButton(callback: callback, fruitOrder: 6),
                          FruitButton(callback: callback, fruitOrder: 7),
                          FruitButton(callback: callback, fruitOrder: 8),
                          FruitButton(callback: callback, fruitOrder: 9),
                          FruitButton(callback: callback, fruitOrder: 10),
                          FruitButton(callback: callback, fruitOrder: 11),
                          FruitButton(callback: callback, fruitOrder: 12),
                          FruitButton(callback: callback, fruitOrder: 13),
                          FruitButton(callback: callback, fruitOrder: 14),
                          FruitButton(callback: callback, fruitOrder: 15),
                          FruitButton(callback: callback, fruitOrder: 16),
                          FruitButton(callback: callback, fruitOrder: 17),
                          FruitButton(callback: callback, fruitOrder: 18),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class FruitButton extends StatelessWidget {
  Function callback;
  int fruitOrder;

  List<String> fruitList = [
    "Açaí",
    "Acerola",
    "Akebi",
    "Ackee",
    "African Cherry Orange",
    "American Mayapple",
    "Apple",
    "Apricot",
    "Araza",
    "Avocado",
    "Banana",
    "Bilberry",
    "Blackberry",
    "Blackcurrant",
    "Black sapote",
    "Blueberry",
    "Boysenberry",
    "Breadfruit",
    "Buddha's hand (fingered citron)",
    "Cactus pear",
    "Canistel",
    "Cashew",
    "Cempedak",
    "Cherimoya (Custard Apple)",
    "Cherry",
    "Chico fruit",
    "Cloudberry",
    "Coco De Mer",
    "Coconut",
    "Crab apple",
    "Cranberry",
    "Currant"
  ];

  FruitButton({required this.callback, required this.fruitOrder});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback(fruitList[fruitOrder]);
        },
        child: Text(fruitList[fruitOrder]));
  }
}