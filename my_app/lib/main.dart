import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var questionIndex = 0;

  void answer() {
    setState(() {
      if (questionIndex < 3)
        questionIndex += 1;
      else {
        questionIndex = 0;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite food type?",
      "What's your name?",
      "How are you?"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello Harsh"),
            ),
            body: Column(
              children: [
                Text(questions[questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: answer,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: answer,
                )
              ],
            )));
  }
}
