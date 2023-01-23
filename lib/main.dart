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
  final List<String> _textList = [
    " I Can Do All Things Through Christ Who Strengthens me",
    "So do not fear, for I am with you; do not be dismayed, for I am your God",
    "For I, the LORD your God, hold your right hand; it is I who say to you, 'Fear not, I am the one who helps you.'",
    "When I thought, My foot slips, Your steadfast love, O LORD, helped me up",
    "He will wipe away every tear from their eyes",
    "The Lord is good to all. - Psalm 145:9",
    "The heavens declare the glory of God. - Psalm 19:1",
    "Jesus Christ is the same yesterday, today and forever. - Hebrews 13:8",
  ];
  final List<Color> _colorList = [
    Colors.purpleAccent,
    Colors.amber,
    Colors.greenAccent,
    Colors.transparent,
    Colors.green,
    Colors.yellow,
    Colors.blue,
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
      floatingActionButton: Container(),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Bible Verse Generator",
          style:
              TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Stack(children: [
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                  color: _colorList[_colorIndex],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 137, horizontal: 30),
                child: SingleChildScrollView(
                  child: Text(_textList[_currentIndex],
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: 'Langar',
                          color: Colors.black)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 18,
            right: 16,
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: GestureDetector(
                onTap: (() {
                  changeText();
                }),
                child: Center(
                  child: Text(
                    "GIMME A QUOTE",
                    style: TextStyle(
                        color: Color(0xffD21A33), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
      // backgroundColor: Color(0xFFFDF06F),
    ));
  }
}
