import 'package:flutter/material.dart';
import 'package:pyqpedia/data/questionset.dart';
import 'package:pyqpedia/QuizPage.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.markedAns, {super.key});

  List<String> markedAns = [];
  List<String> res = [];

  int rig = 0;
  int wro = 0;

  void printNumbers() {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].opt[0] == markedAns[i]) {
        res.add("right");
        rig++;
      } else {
        res.add('wrong');
        wro++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int q = -1;
    printNumbers();
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80, bottom: 80, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            // List of your content items
            Text(
              'You answered $rig questions right and $wro questions wrong.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 25, 25, 70),
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 30,
            ),

            // ...markedAns.map((answer) {
            //   q++;

            //   return Column(
            //     children: [
            //       Text(
            //         '${questions[q].q}',
            //         textAlign: TextAlign.center,
            //         style: const TextStyle(
            //             fontSize: 15,
            //             color: Color.fromARGB(255, 206, 206, 209),
            //             fontWeight: FontWeight.w800),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),

            //       Text('Marked Answer = ${markedAns[i]}'),

            //       Text('Actual Answer= ${questions[i].opt[0]}'),
            //       // if(res[i]=='right')
            //       // {
            //       //   return Text(data;)
            //       // }
            //     ],
            //   );
            // }),

            ...markedAns.map((answer) {
              q++;

              return Column(
                children: [
                  Text(
                    '${q + 1}. ${questions[q].q}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 206, 206, 209),
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    ' ${markedAns[q]}',
                    style: res[q] == 'right'
                        ? const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 42, 242, 27),
                            fontWeight: FontWeight.w400,
                          )
                        : const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 247, 7, 7),
                            fontWeight: FontWeight.w400,
                          ),
                    textAlign: TextAlign.center,
                  ),

                  // Text('Marked Answer = ${markedAns[i]}',

                  //  style:

                  //       if(res[i]=='right')
                  //       {
                  //     const TextStyle(
                  //       fontSize: 15,
                  //       color: Color.fromARGB(255, 206, 206, 209),
                  //       fontWeight: FontWeight.w800,
                  //       ),
                  //       }

                  //       else{

                  //      const TextStyle(
                  //       fontSize: 15,
                  //       color: Color.fromARGB(255, 206, 206, 209),
                  //       fontWeight: FontWeight.w800,
                  //       ),
                  //       }

                  //       //   style:const TextStyle(
                  //       // fontSize: 15,
                  //       // color: Color.fromARGB(255, 206, 206, 209),
                  //       // fontWeight: FontWeight.w800),

                  // ),

                  Text(
                    ' ${questions[q].opt[0]}',
                    style: TextStyle(color: Color.fromARGB(255, 70, 226, 243)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // if(res[i]=='right')
                  // {
                  //   return Text(data;)
                  // }
                ],
              );
            }),



            // ...
          ],
        ),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       'You answered $rig questions right and $wro questions wrong.',
      //       textAlign: TextAlign.center,
      //       style: const TextStyle(
      //           fontSize: 20,
      //           color: Color.fromARGB(255, 25, 25, 70),
      //           fontWeight: FontWeight.w800),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     ...markedAns.map((answer) {
      //       i++;

      //       return Text('$answer and it is ${res[i]}');
      //     })
      //   ],
      // ),
    );
  }
}
