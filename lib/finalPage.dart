import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guess/main.dart';

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final score = ModalRoute.of(context)?.settings.arguments ?? 0;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Guess the Emoji 😎'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                  ),
                  Text(
                    'Você acertou $score de 8 questões!',
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                  buildLoginBtn(context),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildLoginBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          )
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
        child: Text(
          'Jogar novamente',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
