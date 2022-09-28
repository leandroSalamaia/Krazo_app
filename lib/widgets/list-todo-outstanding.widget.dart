import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../views/quiz.view.dart';
import 'drop-button.widget.dart';

class ListTodoOutstanding extends StatelessWidget {
  const ListTodoOutstanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        child: ListTile(
          title: Text('Limpeza semanal fritadeira'),
          subtitle: Text('data de entrega 16/09/2022'),
          trailing: Icon(Icons.play_arrow),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Validar estoque semanal do bar'),
          subtitle: Text('data de entrega 15/09/2022'),
          trailing: SizedBox(
            child: ClienteDropdownButton(),
          ),
          // trailing: Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     IconButton(
          //         onPressed: () {
          //           Navigator.of(context).push(
          //               MaterialPageRoute(builder: (context) => QuizView()));
          //         },
          //         icon: Icon(Icons.play_arrow))
          //   ],
          // ),
        ),
      ),
    ]);
  }
}
