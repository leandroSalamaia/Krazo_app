import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:krazo_app/themes/app.theme.dart';

import '../models/questions.models.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({Key? key, required this.qto}) : super(key: key);

  final Question qto;

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Pergunta: " + widget.qto.QuestionText,
          style: TextStyle(fontSize: 17, color: textInputColor),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Dica: " + widget.qto.Hint,
          style: TextStyle(fontSize: 17, color: textInputColor),
        ),
      ],
    );
  }
}
