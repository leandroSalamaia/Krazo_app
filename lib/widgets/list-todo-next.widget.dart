import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTodoNext extends StatelessWidget {
  const ListTodoNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[
      Card(
        child: ListTile(
          title: Text('Limpeza semanal fritadeira'),
          subtitle: Text('data de entrega 20/09/2022'),
          trailing: Icon(Icons.play_arrow),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Limpeza geral do bar'),
          subtitle: Text('data de entrega 30/09/2022'),
          trailing: Icon(Icons.play_arrow),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Limpeza geral do salão'),
          subtitle: Text('data de entrega 30/09/2022'),
          trailing: Icon(Icons.play_arrow),
        ),
      )
    ]);
  }
}
