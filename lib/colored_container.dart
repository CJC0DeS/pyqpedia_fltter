import 'package:flutter/material.dart';
// import 'package:pyqpedia/quizpage.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer(this.startQuizButton, {super.key});

  final void Function() startQuizButton;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            // width: 50,
            // height: 10,
            scale: 2,
          ), // <-- SEE HERE

          const SizedBox(height: 20),

          const Text(
            "NEET PYQ's (Previous Year Questions)",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 240, 253, 194)),
          ),

          const SizedBox(height: 20),

          TextButton(
            onPressed: startQuizButton,

            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text(
              'Start Test',
              style: TextStyle(
                  color: Color.fromARGB(255, 244, 225, 97), fontSize: 15),
            ),
            // onPressed: () {
            //   // Navigate to the NextPage when the button is pressed
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => QuizPage()),
            //   );
            //   style:
            //   ButtonStyle(
            //     foregroundColor:
            //         MaterialStateProperty.all<Color>(Colors.blue),
            //   );
          )
        ],
      ),
    );
  }
}
