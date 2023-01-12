import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
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
            decoration: BoxDecoration(color: Color(0XFFfdf06f)),
            width: 326,
            height: 500,
            child: Center(
              child: Text("Are you gonna bark,or are you gonna bite?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  )),
            ),
          ),
          Positioned(
            bottom: 18,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xfffdf06f),
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
  )));
}
