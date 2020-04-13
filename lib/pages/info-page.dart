import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  String text = "Teste";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          }),
          title: Text("Álcool ou Gasolina ?"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.topCenter,
          child: Text(
            "O cálculo básico para se descobrir se o álcool é vantajoso ou não em relação à gasolina é simples. Basta dividir o preço do litro do etanol pelo da gasolina. Se o resultado for inferior a 0.7, o Etanol é o melhor para abastecer. Se for maior que 0.7, então a gasolina é melhor. Notícias automotivas: https://www.noticiasautomotivas.com.br/alcool-gasolina-calculo/",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 25, height: 2),
          ),
        ));
  }
}
