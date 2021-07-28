import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
        theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test project - Pavlo Slipets"),
        centerTitle: true,
      ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
        onTap: changeColor,
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                  "Hey there!",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
    );
  }
}