import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageWidgetState createState() => _QuestionPageWidgetState();
}

class _QuestionPageWidgetState extends State<QuestionPage> {

  int submit = 0;

  @override
  Widget build(BuildContext context) {

    Widget nextQuestion = new RaisedButton(
      padding: const EdgeInsets.all(10.0),
      child: const Text('Next Question'),
      color: submit == 0 ? Color(0xFFE9E9E9) : Color(0xFFE08284),
      elevation: submit == 0? 0.0 : 5.0,
      onPressed: () {
        submit = 0;
      },
    );

    Widget submitAnswer = new RaisedButton(
      padding: const EdgeInsets.all(10.0),
      child: const Text('Submit Answer'),
      color: submit == 0? Color(0xFFE08284) : Color(0xFFE9E9E9),
      elevation: submit == 0? 5.0: 0.0,
      onPressed: () {
        setState(() {
          submit = 1;
        });
      },
    );

    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: const Text('SUBJECT HERE'),
            elevation: 0.0,
          ),
          new SliverPadding(
            padding: new EdgeInsets.all(0.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate([
                new Container(
                  height: 250.0,
                  padding: EdgeInsets.all(40.0),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.elliptical(200.0, 35.0),
                        bottomRight: const Radius.elliptical(200.0, 35.0)),
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xFFE08284),
                          const Color(0xFFF1BFB9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.6],
                        tileMode: TileMode.clamp),
                  ),
                  child: Text("QUESTION GOES HERE",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0)),
                ),
                new Column(
                  children: <Widget>[
                    new FlatButton(
                      padding: EdgeInsets.only(
                          top: 40.0, bottom: 10.0, left: 20.0, right: 20.0),
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
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
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
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
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
                          top: 10.0, bottom: 40.0, left: 20.0, right: 20.0),
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
                new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[nextQuestion, submitAnswer]),
                new SizedBox(height: 50.0),
                submit == 1 ? new Container(
                  height: 250.0,
                  color: Color(0xFFF1BFB9),
                ) : new Container()
//                new Container(_answerBox),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
