import 'package:flutter/material.dart';
import './question.dart';

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

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
          title: Text('Literate Umbrella'),
        ),
        body: Column(
          children: [
            // Text('The question!'),
            //Text(questions.elementAt(0)),
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ......
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
