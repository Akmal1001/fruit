import 'package:dartcode/view/home_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(NavApp());

class NavApp extends StatelessWidget {
  const NavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}