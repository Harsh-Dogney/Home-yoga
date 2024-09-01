import 'package:flutter/material.dart';
import 'package:yoga/screen/Home.dart';
import 'package:yoga/screen/SplashScreen.dart';
import 'package:yoga/screen/StartUp.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

