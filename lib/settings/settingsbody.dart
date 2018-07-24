import 'package:flutter/material.dart';
import 'package:quiz/home/dialog.dart';
import 'package:quiz/settings/aboutus.dart';

class SettingsBody extends StatelessWidget {
  final bool horizontal;
  SettingsBody({this.horizontal = true});

  @override
  Widget build(BuildContext context) {
    final header = new Container(
      child: Container(
        color: Colors.green,
        margin: new EdgeInsets.only(bottom: 100.0),
      ),
    );

    final emailButton = Center(
      child: new FlatButton(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          elevation: 0.5,
          child: MaterialButton(
            color: Colors.white,
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text("Update Email Address",
                style: TextStyle(
                    color: Color(0xFFE08284), fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );

    final passButton = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: Text("Change Passowrd",
              style: TextStyle(
                  color: Color(0xFFE08284), fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final logout = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: Text("Log out",
              style: TextStyle(
                  color: Color(0xFFE08284), fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final aboutUs = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new AboutUs()));
          },
          child: Text("About Us",
              style: TextStyle(
                  color: Color(0xFFE08284), fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final contact = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.5,
        child: MaterialButton(
          color: Colors.white,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(AboutUs.tag);
//          },
          child: Text("Contact Us",
              style: TextStyle(
                  color: Color(0xFFE08284), fontWeight: FontWeight.w400)),
        ),
      ),
    );

    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              header,
              emailButton,
              passButton,
              logout,
              aboutUs,
              contact
            ],
          ),
        ),
      ),
    );

//        return new ListView(
//        shrinkWrap: true,
//        padding: EdgeInsets.only(left: 24.0, right: 24.0),
//        children: <Widget>[
//          header,
//          emailButton,
//          passButton,
//          logout,
//          aboutUs,
//          contact
  }
}
