import 'package:flutter/material.dart';
import 'package:quiz/settings/aboutus.dart';

class SettingsBody extends StatelessWidget {
  final bool horizontal;
  SettingsBody({this.horizontal = true});

  @override
  Widget build(BuildContext context) {
    Widget header = new Container(
      child: Container(
        color: Colors.green,
        margin: new EdgeInsets.only(bottom: 100.0),
      ),
    );

    Widget emailButton = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 10.0),
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
          child: new Row(
            children: <Widget>[
              new Image(
                  alignment: FractionalOffset.centerLeft,
                  image: new AssetImage('assets/picture.png'),
                  height: 40.0,
                  width: 50.0),
              new Column(
                children: <Widget>[
                  new Text("Update Email Address",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600)),
                  new Text("sowmya6598@gmail.com",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              new IconButton(
                  icon: new Icon(Icons.navigate_next),
                  onPressed: null,
                  color: Color(0xFFE08284)),
            ],
          ),
        ),
      ),
    );

    Widget passButton = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 70.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: new Row(
            children: <Widget>[
              new Image(
                  alignment: FractionalOffset.centerLeft,
                  image: new AssetImage('assets/picture.png'),
                  height: 40.0,
                  width: 50.0),
              new Column(
                children: <Widget>[
                  new Text("Change Password",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600)),
                  new Text("last changed",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              new IconButton(
                  icon: new Icon(Icons.navigate_next),
                  onPressed: null,
                  color: Color(0xFFE08284)),
            ],
          ),
        ),
      ),
    );

    Widget logout = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 70.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: Text("Log out",
              style: TextStyle(
                  color: Color(0xFFE08284), fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Widget aboutUs = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 70.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new AboutUs()));
          },
          child: new Row(
            children: <Widget>[
              new Image(
                  alignment: FractionalOffset.centerLeft,
                  image: new AssetImage('assets/picture.png'),
                  height: 40.0,
                  width: 50.0),
              new Column(
                children: <Widget>[
                  new Text("About Us",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600)),
                  new Text("who are we",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              new IconButton(
                  icon: new Icon(Icons.navigate_next),
                  onPressed: null,
                  color: Color(0xFFE08284)),
            ],
          ),
        ),
      ),
    );

    Widget contactUs = new FlatButton(
      padding:
          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(17.0),
        shadowColor: Color.fromRGBO(50, 50, 50, 0.2),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 300.0,
          height: 70.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new AboutUs()));
          },
          child: new Row(
            children: <Widget>[
              new Image(
                  alignment: FractionalOffset.centerLeft,
                  image: new AssetImage('assets/picture.png'),
                  height: 40.0,
                  width: 50.0),
              new Column(
                children: <Widget>[
                  new Text("Contact Us",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600)),
                  new Text("We want to hear from you!",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              new IconButton(
                  icon: new Icon(Icons.navigate_next),
                  onPressed: null,
                  color: Color(0xFFE08284)),
            ],
          ),
        ),
      ),
    );

    return new Expanded(
      child: new Center(
        child: new Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: new ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              header,
              emailButton,
              passButton,
              logout,
              aboutUs,
              contactUs
            ],
          ),
        ),
      ),
    );
  }
}
