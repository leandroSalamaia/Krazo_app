import 'package:flutter/material.dart';

class TDButton extends StatelessWidget {
  final String text;
  late String image;
  final VoidCallback callback;
  final double width;

  TDButton({
    required this.text,
    required this.callback,
    this.image = "",
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: width,
      child: FlatButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image != ""
                ? Image.asset(
                    image,
                    width: 32,
                  )
                : SizedBox(),
            image != ""
                ? SizedBox(
                    width: 10,
                  )
                : SizedBox(),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        onPressed: callback,
      ),
    );
  }
}
