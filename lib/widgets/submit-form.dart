import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading.button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasController = new MoneyMaskedTextController();
  var alcController = new MoneyMaskedTextController();
  var busy = false;
  Function subimitFunc;

  SubmitForm({
    @required this.gasController,
    @required this.alcController,
    @required this.busy,
    @required this.subimitFunc,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Input(
          label: "Gasolina",
          controller: gasController,
        ),
        Input(
          label: "Álcool",
          controller: alcController,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: subimitFunc,
          text: "Calcular",
        )
      ],
    );
  }
}
