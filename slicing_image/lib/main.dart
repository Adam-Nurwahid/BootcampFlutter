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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image With Example'),),
        body: Center(
          child: Image.asset(
            'asset/image/news.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover),
        ),
      ),


    );
  }
}


