import 'package:flutter/material.dart';
import 'questions.dart';
import 'finalPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  QuestionList questionList = QuestionList();
  int questionIndex = 0;
  late String correctAnswer;
  final buttonStyle = TextButton.styleFrom(
    backgroundColor: Colors.white,
    padding: EdgeInsets.all(0),
  );

  void updateQuestion(String userChoice) {
    if (userChoice == correctAnswer) {
      setState(() {
        scoreIcon.add(
          Icon(
            Icons.check,
            size: 50.0,
            color: Colors.green,
          ),
        );
        questionIndex++;
        score++;
      });
      lastQuestion();
    } else {
      setState(() {
        scoreIcon.add(
          Icon(
            Icons.close,
            size: 50.0,
            color: Colors.red,
          ),
        );
        questionIndex++;
      });
      lastQuestion();
    }
  }

  void lastQuestion() {
    if (questionIndex == questionList.questionBrain.length) {
      goToLastPage();
      setState(() {
        questionIndex = 0;
        scoreIcon = [];
      });
      goToLastPage();
    }
  }

  int score = 0;

  void goToLastPage() {
    print('entrou');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FinalPage(),
        settings: RouteSettings(
          arguments: score,
        ),
      ),
    );
  }

  List<Icon> scoreIcon = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Guess the Emoji 😎'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/main-background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Text(
                      questionList.questionBrain[questionIndex].questionText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 60.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: buttonStyle,
                    onPressed: () {
                      correctAnswer =
                          questionList.questionBrain[questionIndex].rightAnswer;
                      updateQuestion(questionList
                          .questionBrain[questionIndex].rightAnswer);
                    },
                    child: Text(
                      questionList.questionBrain[questionIndex].rightAnswer,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple, fontSize: 25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: TextButton(
                    style: buttonStyle,
                    onPressed: () {
                      correctAnswer =
                          questionList.questionBrain[questionIndex].rightAnswer;
                      updateQuestion(questionList
                          .questionBrain[questionIndex].wrongAnswers[0]);
                    },
                    child: Text(
                      questionList.questionBrain[questionIndex].wrongAnswers[0],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple, fontSize: 25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: TextButton(
                    style: buttonStyle,
                    onPressed: () {
                      correctAnswer =
                          questionList.questionBrain[questionIndex].rightAnswer;
                      updateQuestion(questionList
                          .questionBrain[questionIndex].wrongAnswers[1]);
                    },
                    child: Text(
                      questionList.questionBrain[questionIndex].wrongAnswers[1],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple, fontSize: 25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0, //,
                ),
                Row(
                  children: scoreIcon,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
