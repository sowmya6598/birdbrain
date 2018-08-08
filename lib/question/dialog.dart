import 'package:flutter/material.dart';
import 'package:quiz/question/normalMode/questionscreen.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget normalmode = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 10.0,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 80.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new QuestionPage()));
          },
          child: new Text("Normal Mode",
              style: TextStyle(
                  color: Color(0xFFE08284),
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0)),
        ),
      ),
    );

    Widget normaltext = new Container(
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 22.0, right: 20.0),
      child: new Text(
        "Go through the question bank and answer as many questions as you like",
        style: TextStyle(
            letterSpacing: 1.0,
            color: Colors.black54,
            fontWeight: FontWeight.w700,
            fontSize: 15.0),
      ),
    );

    final or = new Container(
      alignment: FractionalOffset.center,
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        " or ",
        style: TextStyle(color: Colors.black54),
      ),
    );

    Widget fastmoney = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 10.0,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 80.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new QuestionPage()));
          },
          child: new Text("Fast Money",
              style: TextStyle(
                  color: Color(0xFFE08284),
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0)),
        ),
      ),
    );

    Widget fasttext = new Container(
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 22.0, right: 20.0),
      child: new Text(
        "Race against time and see how many questions you can answer in 20 seconds",
        style: TextStyle(
            letterSpacing: 1.0,
            color: Colors.black54,
            fontWeight: FontWeight.w700,
            fontSize: 15.0),
      ),
    );

    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pick a Mode'),
      ),
      body: new Card(
        elevation: 10.0,
        child: new Center(
          child: new ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[normalmode, normaltext, or, fastmoney, fasttext],
          ),
        ),
      ),
    );
  }
}
