import 'package:flutter/material.dart';

class QuestionClass {
  final String questionText;
  final String rightAnswer;
  List<String> wrongAnswers;

  QuestionClass(
      {required this.questionText,
      required this.rightAnswer,
      required this.wrongAnswers}) {
    assert(questionText != null);
    assert(rightAnswer != null);
    assert(wrongAnswers != null);
  }
}

class QuestionList {
  List<QuestionClass> questionBrain = [
    QuestionClass(
        questionText: 'ð±ðª',
        rightAnswer: 'PÃ¢nico',
        wrongAnswers: ['Jason', 'Sexta-Feira 13']),
    QuestionClass(
        questionText: 'ðºð¸ð°',
        rightAnswer: 'American Pie',
        wrongAnswers: ['Cozinha Americana', 'PedaÃ§o Americano']),
    QuestionClass(
        questionText: 'ð©ð©âð¦°ð©âð¦±ð§ðâï¸',
        rightAnswer: 'Quatro Amigas e um Jeans Viajante',
        wrongAnswers: [
          'Viagem da Moda',
          'Influenciadores da Moda Internacional'
        ]),
    QuestionClass(
        questionText: 'ððððâ°ï¸',
        rightAnswer: 'Quatro Casamentos e Um Funeral',
        wrongAnswers: [
          'As 4 esposas de um Vampiro',
          'O casamento de um defunto!'
        ]),
    QuestionClass(
        questionText: 'ð£ï¸ð',
        rightAnswer: 'O Discurso do Rei',
        wrongAnswers: ['Rei LeÃ£o', 'Game of Thrones']),
    QuestionClass(
        questionText: 'ðð¥ð¼',
        rightAnswer: 'Kung Fu Panda',
        wrongAnswers: ['Bom de Briga', 'KaratÃª-Kid']),
    QuestionClass(
        questionText: 'ðï¸ð§ââï¸',
        rightAnswer: 'O NÃ¡ufrago',
        wrongAnswers: ['A Ilha', 'A Praia']),
    QuestionClass(
        questionText: 'ð¢',
        rightAnswer: 'Titanic',
        wrongAnswers: ['As aventuras de PÃ­', 'Navio Fantasma']),
  ];
}
