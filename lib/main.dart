import 'dart:html';
import 'dart:js';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> _textList = ["text1", "text2", "text3"];
  final List<Color> _colorList = [
    Colors.white,
    Colors.amber,
    Colors.greenAccent
  ];
  int _currentIndex = 0;
  int _colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    void changeText() {
      setState(() {
        _currentIndex = Random().nextInt(_textList.length);
        _colorIndex = Random().nextInt(_colorList.length);
      });
    }

    void changeColor() {
      setState(() {});
    }

    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0XFFD21A33)),
            width: 326,
            height: 58,
          ),

          Stack(children: [
            Container(
              decoration: BoxDecoration(color: _colorList[_colorIndex]),
              width: 326,
              height: 500,
              child: Center(
                child: Text(_textList[_currentIndex],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: _colorList[_currentIndex])),
              ),
            ),
            Positioned(
              bottom: 18,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  changeText();
                  changeColor(); //RandomText
                },
                backgroundColor: _colorList[_colorIndex],
                child: Text(
                  "GIMME A QUOTE",
                  style: TextStyle(color: Color(0xffD21A33)),
                ),
              ),
            ),
          ]),
          //Container(child: FloatingActionButton.small(onPressed: (() {})))
        ],
      )),
      // backgroundColor: Color(0xFFFDF06F),
    ));
  }
}
