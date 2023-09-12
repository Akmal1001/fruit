import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  List<String> myList = [
    "Book",
    'Note',
    'Pen',
    'making',
    'was',
    'her',
    'not',
    'She',
    'about',
    'time.',
    'on',
    'appointment',
    'anxious',
    "Book",
    'Note',
    'Pen',
    'making',
    'was',
    'her',
    'not',
    'She',
    'about',
    'time.',
    'on',
    'appointment',
    'anxious',
    "Book",
    'Note',
    'Pen',
    'making',
    'was',
    'her',
    'not',
    'She',
    'about',
    'time.',
    'on',
    'appointment',
    'anxious'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 16"),
      ),
      body: Container(
        child: ListView(
          children: myList.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(child: Text(e)),
            );
          }).toList(),
        ),
      ),
    );
  }
}