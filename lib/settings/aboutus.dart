import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Text(
        'About Us',
        style: TextStyle(fontSize: 40.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
            ' Sowmya Thottambeti',
        style: TextStyle(fontSize: 25.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFFF1BFB9),
          const Color(0xFFE08284),
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
