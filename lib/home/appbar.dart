import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {

  final title = 'BirdBrain';
  final double barHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container (
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child:  new Center (
        child: new Text (
            title,
            style: const TextStyle(
                color: Color(0xFFFFFFFF),
//            fontFamily:
                fontWeight: FontWeight.w600,
                fontSize: 36.0
            )
        ),
      ),


      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFFF1BFB9),
              const Color(0xFFE08284),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        ),
      ),


    );
  }
}