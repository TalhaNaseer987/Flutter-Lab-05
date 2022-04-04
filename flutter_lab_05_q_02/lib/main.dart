import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(children: [
            // Button 01
            AudioButton(1, Colors.yellow),

            // Button 02

            AudioButton(2, Colors.black),

            // Button 03

            AudioButton(3, Colors.purple),

            // Button 04

            AudioButton(4, Colors.lightBlue),

            // Button 05

            AudioButton(5, Colors.orange),

            // Button 06

            AudioButton(6, Colors.red),

            // Button 07

            AudioButton(7, Colors.green),
          ]),
        ),
      ),
    );
  }

  Expanded AudioButton(int num, Color colorName) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 100,
        height: double.infinity,
        child: FlatButton(
            color: colorName,
            onPressed: () {
              final player = AudioCache();
              player.play('note$num.wav');
            },
            child: (Text(''))),
      ),
    );
  }
}
