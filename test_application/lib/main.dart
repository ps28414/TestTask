import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pavlo Slipets - Test Project"),
          centerTitle: true,
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => print('Tapped'),
          child: Expanded(
            child: Container(
              child: Center(
                  child: Text (
                    "Hey there!",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontSize: 40,
                    ),
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}