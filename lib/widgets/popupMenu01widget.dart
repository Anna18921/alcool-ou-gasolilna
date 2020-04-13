import 'package:alcoolougasolina/pages/info-page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class popupMenu01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: "info",
          child: Text("Sobre o Cálculo"),
        )
      ],
      onSelected: (value) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoPage()),
        );
      },
    );
  }
}
