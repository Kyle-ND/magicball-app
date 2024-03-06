import 'dart:math';

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
      title: 'Magic Ball 8',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask me Anything",
            style: TextStyle(
                fontSize: 30,
                 foreground: Paint()..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = Colors.white,),
          ),
          backgroundColor: Colors.blue[200],
          centerTitle: true,
        ),
        body: const magicball(),
      ),
    );
  }
}

// ignore: camel_case_types
class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

// ignore: camel_case_types
class _magicballState extends State<magicball> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            imageNumber = Random().nextInt(5) + 1;
            setState(() {});
          },
          child: Image.asset('images/ball$imageNumber.png')),
    );
  }
}
