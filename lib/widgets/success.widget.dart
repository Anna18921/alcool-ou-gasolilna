import 'package:flutter/material.dart';

import 'loading.button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;
  var resultCalc;

  Success({
    @required this.result,
    @required this.reset,
    @required this.resultCalc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            " Álcool R\$ / R\$ Gasolina = " + resultCalc,
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            invert: true,
            func: reset,
            text: "Calcular Novamente?",
          )
        ],
      ),
    );
  }
}
