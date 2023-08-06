import 'package:flutter/material.dart';
// import 'package:pyqpedia/colored_container.dart';
import 'package:pyqpedia/QuizPage.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // body: ColoredContainer(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.purple])),
        child: QuizPage(),
      ),
    ),
  ));
}
