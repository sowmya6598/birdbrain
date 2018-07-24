import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Stack(
      alignment: const Alignment(0.0, 0.0),
      children: <Widget>[
        new Container(
          child: new Text(
            'Pick a Mode',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        new Container (
          padding: const EdgeInsets.all(5.0),
          decoration: new BoxDecoration(
              color: new Color.fromARGB(150, 71, 150, 236)
          ),
          child: new Text(
              'Normal mode',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0)
          ),
        ),
        new Container (
          padding: const EdgeInsets.all(5.0),
          decoration: new BoxDecoration(
              color: new Color.fromARGB(150, 71, 150, 236)
          ),
          child: new Text(
              'Head to Head',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0)
          ),
        ),
      ],
    );
  }
}