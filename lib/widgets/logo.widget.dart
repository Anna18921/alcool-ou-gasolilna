import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Image.asset(
          "assets/images/icon-home.png",
          height: 110,
          width: 120,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Álcool ou Gasolina ?",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        // SizedBox(
        //   height: 20,
        // )
      ],
    );
  }
}
