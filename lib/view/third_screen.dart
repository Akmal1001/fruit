import 'package:dartcode/view/home_page.dart';
import 'package:dartcode/view/second_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget screenPreferences(
        {required String screenName,
        required Widget buttons,
        required Widget buttons1}) {
      return Scaffold(
        backgroundColor: Color(0xFF262020),
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text(screenName),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [buttons, buttons1],
            ),
          ),
        ),
      );
    }

    Widget buttonBuilder(
        {required Widget screenWidget, required String buttonName}) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green[700]),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenWidget,
            ),
          );
        },
        child: Text(buttonName),
      );
    }

    return screenPreferences(
        screenName: 'Third Screen',
        buttons: buttonBuilder(
            screenWidget: FirstScreen(), buttonName: 'Go to First Screen'),
        buttons1: buttonBuilder(
            screenWidget: SecondScreen(), buttonName: 'Go to Second Screen'));
  }
}