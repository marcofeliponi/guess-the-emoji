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
        questionText: '😱🔪',
        rightAnswer: 'Pânico',
        wrongAnswers: ['Jason', 'Sexta-Feira 13']),
    QuestionClass(
        questionText: '🇺🇸🍰',
        rightAnswer: 'American Pie',
        wrongAnswers: ['Cozinha Americana', 'Pedaço Americano']),
    QuestionClass(
        questionText: '👩👩‍🦰👩‍🦱👧👖✈️',
        rightAnswer: 'Quatro Amigas e um Jeans Viajante',
        wrongAnswers: [
          'Viagem da Moda',
          'Influenciadores da Moda Internacional'
        ]),
    QuestionClass(
        questionText: '💍💍💍💍⚰️',
        rightAnswer: 'Quatro Casamentos e Um Funeral',
        wrongAnswers: [
          'As 4 esposas de um Vampiro',
          'O casamento de um defunto!'
        ]),
    QuestionClass(
        questionText: '🗣️👑',
        rightAnswer: 'O Discurso do Rei',
        wrongAnswers: ['Rei Leão', 'Game of Thrones']),
    QuestionClass(
        questionText: '👊💥🐼',
        rightAnswer: 'Kung Fu Panda',
        wrongAnswers: ['Bom de Briga', 'Karatê-Kid']),
    QuestionClass(
        questionText: '🏝️🧍‍♂️',
        rightAnswer: 'O Náufrago',
        wrongAnswers: ['A Ilha', 'A Praia']),
    QuestionClass(
        questionText: '🚢',
        rightAnswer: 'Titanic',
        wrongAnswers: ['As aventuras de Pí', 'Navio Fantasma']),
  ];
}
