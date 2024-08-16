import 'package:ecom_ui/pages/HomePage.dart';
import 'package:ecom_ui/pages/ItemPage.dart';
import 'package:ecom_ui/pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFCEDDEE)),
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => Homepage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
