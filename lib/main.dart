import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
//void main () {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
            Question(questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            TextButton(
              onPressed: () => print("Answer 2 chosen!"), // Anonymous fn
              child: const Text('Answer 2'),
            ),
            TextButton(
              onPressed: () {
                //Anonymous fn
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
