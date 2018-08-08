import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageWidgetState createState() => _QuestionPageWidgetState();
}

class _QuestionPageWidgetState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SUBJECT HERE'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            new Container(
              height: 250.0,
              padding: EdgeInsets.only(top: 15.0, bottom: 30.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.elliptical(150.0, 35.0),
                    bottomRight: const Radius.elliptical(150.0, 35.0)),
                gradient: new LinearGradient(
                    colors: [
                      const Color(0xFFE08284),
                      const Color(0xFFF1BFB9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.6],
                    tileMode: TileMode.clamp),
              ),
            ),
            new Column(
              children: <Widget>[
                new FlatButton(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(17.0),
                    shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
                    elevation: 0.5,
                    child: MaterialButton(
                      color: Colors.white,
                      minWidth: 300.0,
                      height: 70.0,
                      onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
                      },
                      child: new Text("Answer 1",
                          style: TextStyle(
                              color: Color(0xFFE08284),
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0)),
                    ),
                  ),
                ),
                new FlatButton(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(17.0),
                    shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
                    elevation: 0.5,
                    child: MaterialButton(
                      color: Colors.white,
                      minWidth: 300.0,
                      height: 70.0,
                      onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
                      },
                      child: new Text("Answer 2",
                          style: TextStyle(
                              color: Color(0xFFE08284),
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0)),
                    ),
                  ),
                ),
                new FlatButton(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(17.0),
                    shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
                    elevation: 0.5,
                    child: MaterialButton(
                      color: Colors.white,
                      minWidth: 300.0,
                      height: 70.0,
                      onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
                      },
                      child: new Text("Answer 3",
                          style: TextStyle(
                              color: Color(0xFFE08284),
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0)),
                    ),
                  ),
                ),
                new FlatButton(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 20.0, right: 20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(17.0),
                    shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
                    elevation: 0.5,
                    child: MaterialButton(
                      color: Colors.white,
                      minWidth: 300.0,
                      height: 70.0,
                      onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
                      },
                      child: new Text("Answer 4",
                          style: TextStyle(
                              color: Color(0xFFE08284),
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
