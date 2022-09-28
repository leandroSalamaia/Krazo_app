import 'package:flutter/material.dart';
import 'package:flutter_guid/flutter_guid.dart';

class Question {
  final Guid id;
  final int QuestionNumber;
  final String Name;
  final String QuestionText;
  final String Hint;
  final bool BooleanEnabled;
  final String BooleanText;
  final String BooleanHint;
  final bool NoApplyOptionEnabled;
  final String NoApplyOptionText;
  final String NoApplyOptionHint;
  final bool TextFieldEnabled;
  final String TextFieldText;
  final String TextFieldHint;
  final bool PhotoEnabled;
  final String PhotoText;
  final String PhotoHint;
  final bool NumericEnabled;
  final String NumericText;
  final String NumericHint;

  Question({
    required this.id,
    required this.QuestionNumber,
    required this.Name,
    required this.QuestionText,
    this.Hint = "",
    this.BooleanEnabled = false,
    this.BooleanText = "",
    this.BooleanHint = "",
    this.NoApplyOptionEnabled = false,
    this.NoApplyOptionText = "",
    this.NoApplyOptionHint = "",
    this.TextFieldEnabled = false,
    this.TextFieldText = "",
    this.TextFieldHint = "",
    this.PhotoEnabled = false,
    this.PhotoText = "",
    this.PhotoHint = "",
    this.NumericEnabled = false,
    this.NumericText = "",
    this.NumericHint = "",
  });
}

List<Question> question = [
  Question(
      id: new Guid("0CDF4C87-2C9E-4E0D-A784-E85CBBEC8535"),
      Name: "Temperatura do Frezzer",
      QuestionText: "Frezzer está na temperatura Correta",
      Hint: "Temperatura deve estar entre 2 e 6 graus",
      TextFieldEnabled: true,
      TextFieldText: "Informe a temperatura?",
      QuestionNumber: 1),
  Question(
      id: new Guid("240EEB22-42D0-4795-8F3E-C579C0D199BF"),
      Name: "Quantidade de cerveja",
      QuestionText: "Averiguar a quantidade de cervejas original",
      Hint: "deve ter mais que 20 garrafas",
      TextFieldEnabled: true,
      TextFieldText: "Informe a quantidade atual?",
      QuestionNumber: 2),
  Question(
      id: new Guid("3CBB3D7B-7C5F-4D98-9D71-A1FD8E51A011"),
      Name: "Taças de vinho",
      QuestionText: "Todas as taças de vinho foram polidas",
      BooleanEnabled: true,
      QuestionNumber: 3),
];

GetQuestionByQuestionNumber({required int number}) {
  Question qtd =
      question.firstWhere((element) => element.QuestionNumber == number);
  return qtd;
}

GetAmountQuestion() {
  return question.length;
}
