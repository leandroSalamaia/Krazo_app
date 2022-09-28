import 'package:flutter/material.dart';
import 'package:krazo_app/themes/app.theme.dart';
import 'package:krazo_app/views/login.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krazo',
      theme: ThemeData(
          scaffoldBackgroundColor: bodyColor,
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          )),
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
