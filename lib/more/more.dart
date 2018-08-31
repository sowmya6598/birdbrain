import 'package:flutter/material.dart';

class MoreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: new Text("More",
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2.0,
                  fontSize: 20.0)),
          leading: new Container(),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.0),
          mainAxisSpacing: 20.0,
          crossAxisCount: 1,
          children: <Widget>[
            new Card(color: Colors.red),
            new Card(color: Colors.blue),
            new Card(color: Colors.pink),
            new Card(color: Colors.yellow)
          ],
        ),
      ),
    );
  }
}
