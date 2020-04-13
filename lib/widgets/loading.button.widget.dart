import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 70,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: invert ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
              child: Text(text,
                  style: TextStyle(
                      color: invert
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                      fontSize: 25)),
              onPressed: func,
            ),
          );
  }
}
