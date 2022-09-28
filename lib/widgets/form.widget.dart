import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _MyDemoState createState() => _MyDemoState();
}

enum SingingCharacter { lafayette, jefferson }

class _MyDemoState extends State<FormWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
            width: 200,
            height: 100,
            child: ListTile(
              title: const Text('Lafayette'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            )),
        SizedBox(
            width: 200,
            height: 100,
            child: ListTile(
              title: const Text('jefferson'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ))
        // more widgets
      ],
    );
  }
}
