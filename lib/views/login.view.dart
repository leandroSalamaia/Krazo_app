import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:krazo_app/themes/app.theme.dart';

import 'home.view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/Krazo.png",
                width: 200,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  maxLength: 100,
                  cursorColor: textInputColor,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide:
                    //       const BorderSide(color: Colors.grey, width: 0.0),
                    // ),
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(color: textInputColor)),
                    labelText: 'Usuário',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    helperStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: textInputColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: textInputColor),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Esqueceu a senha',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: buttonPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomeView()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Ou",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SignInButton(
                Buttons.Google,
                text: "Sign in with Google",
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              SignInButton(
                Buttons.FacebookNew,
                text: "Sign in with Facebook",
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
