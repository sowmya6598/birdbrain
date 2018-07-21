import 'package:flutter/material.dart';
import 'package:quiz/settings/aboutus.dart';


class SettingsBody extends StatelessWidget {
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
          elevation: 5.0,
          child: MaterialButton(
            color: Colors.lightBlueAccent,
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text("Update Email Address",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );

    final passButton = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.lightBlueAccent,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: Text("Change Passowrd",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final logout = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.lightBlueAccent,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//          },
          child: Text("Log out",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final aboutUs = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.lightBlueAccent,
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new AboutUs()));
          },
          child: Text("About Us",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );

    final contact = new FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.lightBlueAccent,
          minWidth: 200.0,
          height: 42.0,
//          onPressed: () {
//                  Navigator.of(context).pushNamed(AboutUs.tag);
//          },
          child: Text("Contact Us",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );

    return new ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        header,
        emailButton,
        passButton,
        logout,
        aboutUs,
        contact
      ],
    );
  }
}
