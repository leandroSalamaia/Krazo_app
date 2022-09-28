import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:krazo_app/models/options.models.dart';

import '../views/quiz.view.dart';

class ClienteDropdownButton extends StatefulWidget {
  ClienteDropdownButton({Key? key}) : super(key: key);

  @override
  _ClienteDropdownButtonState createState() => _ClienteDropdownButtonState();
}

class _ClienteDropdownButtonState extends State<ClienteDropdownButton> {
  String ticket = '';
  List<String> tickets = [];

  readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      false,
      ScanMode.QR,
    );
    setState(() => ticket = code != '-1' ? code : 'Não validado');
  }

  @override
  Widget build(BuildContext context) {
    List<Options> options = [
      Options(
          id: 1, nome: "Baixar", icon: Icons.download, callback: () async {}),
      Options(
          id: 2,
          nome: "Responder",
          icon: Icons.play_arrow,
          callback: () async {
            await readQRCode();
            if (ticket == '123456') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => QuizView()));
            }
          }),
    ];
    return DropdownButton<int>(
      icon: RotatedBox(quarterTurns: 1, child: Icon(Icons.chevron_right)),
      underline: Container(),
      elevation: 1,
      onChanged: (int? id) {
        Options opt = options.firstWhere((element) => element.id == id);
        opt.callback();
      },
      items: options.map<DropdownMenuItem<int>>((Options value) {
        return DropdownMenuItem<int>(
          value: value.id,
          child: Row(
            children: <Widget>[Icon(value.icon), Text(value.nome)],
          ),
        );
      }).toList(),
    );
  }
}
