import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/questions.models.dart';
import '../widgets/form-page.widget.dart';
import '../widgets/form.widget.dart';
import '../widgets/nav-drawer.widget.dart';
import '../widgets/quiz.widget.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  int numberQuestion = 1;
  int QuestionAmount = GetAmountQuestion();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 106, 107, 107)),
      drawer: NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Validação do freezer", style: TextStyle(fontSize: 17)),
                  Text(
                    this.numberQuestion.toString() +
                        "/" +
                        this.QuestionAmount.toString(),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Container(
                // height: 500,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: QuizWidget(
                          qto: GetQuestionByQuestionNumber(
                              number: this.numberQuestion),
                        ),
                      ),
                      Container(
                          child: new ButtonBar(children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20)),
                          onPressed: () {
                            setState(() {
                              if (this.numberQuestion > 1)
                                this.numberQuestion--;
                            });
                          },
                          child: const Text('Aterior'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20)),
                          onPressed: () {
                            setState(() {
                              if (this.numberQuestion < this.QuestionAmount)
                                this.numberQuestion++;
                            });
                          },
                          child: const Text('Proxima'),
                        ),
                      ])),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
