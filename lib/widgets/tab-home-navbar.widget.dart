import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabHomeNavbar extends StatelessWidget {
  const TabHomeNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(text: "Pendentes"),
        Tab(text: "Atuais"),
        Tab(text: "Proximas")
      ],
    );
  }
}
