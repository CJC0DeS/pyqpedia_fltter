import 'package:flutter/material.dart';

var styl = ElevatedButton.styleFrom(
    // alignment: Alignment.center,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    fixedSize: Size(360, 30),
    backgroundColor: Color.fromARGB(230, 242, 159, 159));

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: styl,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ));
    // const SizedBox(height: 10);
  }
}

// class AnswerButton extends StatelessWidget {
//   final String answerText;
//   final int answerIndex;
//   final Function(int answerIndex) onPressed;

//   const AnswerButton(this.answerText, this.answerIndex, this.onPressed);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: styl,
//       onPressed: () => onPressed(
//           answerIndex), // Pass the selected answer index to the callback function
//       child: Text(
//         answerText,
//         style: TextStyle(fontSize: 16),
//       ),
//     );
//   }
// }
