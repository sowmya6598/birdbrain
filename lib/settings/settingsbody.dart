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
        margin: new EdgeInsets.only(bottom: 20.0),
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
              new Container(
                child: SizedBox(width: 10.0),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("Update Email Address",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0)),
                  new Container(
                    child: SizedBox(height: 5.0),
                  ),
                  new Text("sowmya6598@gmail.com",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0)),
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
              new Container(
                child: SizedBox(width: 10.0),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("Change Password",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0)),
                  new Container(
                    child: SizedBox(height: 5.0),
                  ),
                  new Text("last changed 13 days ago",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0)),
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
                  color: Color(0xFFE08284),
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0)),
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
              new Container(
                child: SizedBox(width: 10.0),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("About Us",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0)),
                  new Container(
                    child: SizedBox(height: 5.0),
                  ),
                  new Text("who are we",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0)),
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
              new Container(
                child: SizedBox(width: 10.0),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("Contact Us",
                      style: TextStyle(
                          color: Color(0xFFE08284),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0)),
                  new Container(
                    child: SizedBox(height: 5.0),
                  ),
                  new Text("We want to hear from you!",
                      style: TextStyle(
                          color: Color(0xFFF1BFB9),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0)),
                ],
              ),
              new IconButton(
                  alignment: Alignment.centerRight,
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
              new Text(
                "ACCOUNT",
                style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0),
              ),
              emailButton,
              passButton,
              logout,
              SizedBox(height: 25.0),
              new Text(
                "OTHER",
                style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0),
              ),
              aboutUs,
              contactUs
            ],
          ),
        ),
      ),
    );
  }
}
