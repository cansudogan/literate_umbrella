import 'package:flutter/material.dart';

//void main() {
//  runApp(LiterateUmbrella());
//}

void main() => runApp(LiterateUmbrella());

class LiterateUmbrella extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestions() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
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
