import 'package:flutter/material.dart';

import '../themes/app.theme.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: menuColor,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 100,
                          height: 100,
                          child: ClipOval(
                            child: Image.network(
                                'https://thispersondoesnotexist.com/image'),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jorge",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.view_list_outlined),
            title: Text('Iniciar questionário'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
