import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("MAGIC 8 BALL"),
          backgroundColor: Colors.blue,
        ),
        body: magicpage(),
      ),
    ),
  );
}

class magicpage extends StatefulWidget {

  @override
  _magicpageState createState() => _magicpageState();
}

class _magicpageState extends State<magicpage> {
  int ballnum = 2;
  Random random = new Random();
  void generate1() {
    setState(() {
      ballnum = random.nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: TextButton(
              onPressed: generate1,
              child: Image(
                image: AssetImage('images/ball$ballnum.png'),
              ),
            )
        )
      ],
    );
  }
}

