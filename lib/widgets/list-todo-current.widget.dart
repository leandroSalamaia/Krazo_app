import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTodoCurrent extends StatelessWidget {
  const ListTodoCurrent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[
      Card(
        child: ListTile(
          title: Text('Limpeza diaria do salão'),
          subtitle: Text('data de entrega 19/09/2022'),
          trailing: Icon(Icons.play_arrow),
        ),
      )
    ]);
  }
}
