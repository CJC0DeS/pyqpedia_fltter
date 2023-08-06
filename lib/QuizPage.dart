import 'package:flutter/material.dart';
import 'package:pyqpedia/colored_container.dart';
import 'package:pyqpedia/data/questionset.dart';
import 'package:pyqpedia/answer_button.dart';
import 'package:pyqpedia/result_page.dart';
// import 'dart:html';

var styl = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    fixedSize: Size(200, 30),
    backgroundColor: Color.fromARGB(230, 242, 159, 159));

List<String> markedAns = [];

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }
}

Widget? activeScreen;

int queno = 0;

var quest = questions;

class _QuizPageState extends State<QuizPage> {
  @override
  void initState() {
    activeScreen = ColoredContainer(startQuizButton);
    super.initState();
  }

  void startQuizButton() {
    setState(() {
      activeScreen = buildQuizWidget(); // Use the method to create QuizWidget
    });
  }

  void answrBtnClick(String ans) {
    // setState(() {
    //   queno++;
    // }

    queno++;

    markedAns.add(ans);

    // print(ans);

    if (queno == questions.length) {
      setState(() {
        activeScreen = ResultPage(markedAns);
      });
      return;
    }

    // print("queno is $queno");

    startQuizButton();

    // print('queno is :$queno  ${quest[queno].q}');
    //
    // print('question is :${quest[queno].q}');
  }

  Widget buildQuizWidget() {
    // var quelist = questions[queno].opt;
    var quelist2 = questions[queno].getshuffledopt();
    // String optionsText = questions[queno].opt.join(' ');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              quest[queno].q,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 25, 25, 70),
                  fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // ...{quelist}.map((answer) {
          //   return AnswerButton(answerText:answer, onTap:answrBtnClick );
          // }).toList(),

          // if (quelist2.isNotEmpty)
          // {

          ...quelist2.map((answer) {
            return AnswerButton(
                answerText: answer,
                onTap: () {
                  answrBtnClick(answer);
                });
          }),

          // }

          // {questions[queno].opt}.forEach((name) {
          // print(name);
          // }),

          // AnswerButton(answerText: quelist2[0], onTap: answrBtnClick),
          // const SizedBox(height: 10),
          // AnswerButton(answerText: quelist2[1], onTap: answrBtnClick),
          // const SizedBox(height: 10),
          // AnswerButton(answerText: quelist2[2], onTap: answrBtnClick),
          // const SizedBox(height: 10),
          // AnswerButton(answerText: quelist2[3], onTap: answrBtnClick),
        ],
      ),
    );
  }

  @override
  Widget build(context) {
    return Container(
      child: activeScreen,
    );
  }
}
