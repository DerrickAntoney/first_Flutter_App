import 'package:flutter/material.dart';

//void main () {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex]
            ),
            TextButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            TextButton(
              onPressed: () => print("Answer 2 chosen!"),// Anonymous fn
              child: Text('Answer 2'),
            ),
            TextButton(
              onPressed: () {   //Anonymous fn
                //...
                print('Answer 3 chosen!');
              },
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
