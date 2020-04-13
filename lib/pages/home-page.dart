import 'dart:math';

import 'package:alcoolougasolina/widgets/logo.widget.dart';
import 'package:alcoolougasolina/widgets/popupMenu01widget.dart';
import 'package:alcoolougasolina/widgets/submit-form.dart';
import 'package:alcoolougasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasController = new MoneyMaskedTextController();
  var _alcController = new MoneyMaskedTextController();
  var _busy = false;
  var _resultText;
  var _completed = false;
  var _resultCalc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Álcool ou Gasolina? "),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: popupMenu01(),
          )
        ],
        elevation: sqrt2,
      ),
      body: ListView(children: <Widget>[
        Logo(),
        _completed
            ? Success(
                reset: reset,
                result: _resultText,
                resultCalc: _resultCalc,
              )
            : SubmitForm(
                gasController: _gasController,
                alcController: _alcController,
                subimitFunc: calculate,
                busy: _busy,
              ),
      ]),
    );
  }

  calculate() {
    if (_gasController.text == "0,00" || _alcController.text == "0,00") {
      return new Future.delayed(
          const Duration(milliseconds: 50),
          () => {
                Fluttertoast.showToast(
                  msg: "Precisa inserir o Preço.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                )
              });
    } else {
      double alcool = double.parse(
              _alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
          100;
      double gasolina = double.parse(
              _gasController.text.replaceAll(new RegExp(r'[,.]'), '')) /
          100;
      double result = alcool / gasolina;

      setState(() {
        _completed = false;
        _busy = true;
      });

      return new Future.delayed(
          const Duration(seconds: 1),
          () => {
                setState(() {
                  _resultCalc = result.toString();
                  _resultText = result >= 0.7
                      ? "Compensa Utilizar gasolilna!"
                      : "Compensa Utilizar álcool!";
                  _completed = true;
                  _busy = false;
                })
              });
    }
  }

  reset() {
    setState(() {
      _completed = false;
      _busy = false;
      _gasController = new MoneyMaskedTextController();
      _alcController = new MoneyMaskedTextController();
    });
  }
}
