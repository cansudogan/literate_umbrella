import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

//void main() {
//  runApp(LiterateUmbrella());
//}

void main() => runApp(LiterateUmbrella());

class LiterateUmbrella extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LiterateUmbrellaState();
  }
}

class _LiterateUmbrellaState extends State<LiterateUmbrella> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Cansu', 'Cansu', 'Cansu'],
    }
  ];

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text('Literate Umbrella'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  // Text('The question!'),
                  //Text(questions.elementAt(0)),
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('You did it!')),
      ),
    );
  }
}
