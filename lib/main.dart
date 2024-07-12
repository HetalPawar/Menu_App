import 'package:flutter/material.dart';
import 'package:menu_app/homepage/homepagewithcounter.dart';
import 'package:menu_app/otherPages/cartPage.dart';
import 'package:menu_app/otherPages/welcomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        '/welcomepage': (context) => const welcomePage(),
        '/homepagewc': (context) => homepagewc(),
        '/cartpage': (context) => const cartPage(),
      },
    );
  }
}

