import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:krazo_app/themes/app.theme.dart';
import 'package:krazo_app/widgets/nav-drawer.widget.dart';
import 'package:krazo_app/widgets/user-card.widget.dart';

import '../widgets/list-todo-current.widget.dart';
import '../widgets/list-todo-next.widget.dart';
import '../widgets/list-todo-outstanding.widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: menuColor,
            bottom: TabBar(
              tabs: [
                Tab(text: "Pendentes"),
                Tab(text: "Atuais"),
                Tab(text: "Proximas")
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: new Stack(
                  children: <Widget>[
                    new Icon(Icons.notifications),
                    new Positioned(
                      right: 0,
                      child: new Container(
                        padding: EdgeInsets.all(1),
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: new Text(
                          '5',
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              )
            ]),
        drawer: NavDrawer(),
        body: TabBarView(children: <Widget>[
          ListTodoOutstanding(),
          ListTodoCurrent(),
          ListTodoNext(),
        ]),
      ),
    );
  }
}
