import 'package:flutter/material.dart';
import 'package:quiz/settings/aboutus.dart';

//class SettingsBody extends StatelessWidget {

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final emailButton = new FlatButton(
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
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
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
          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
          },
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
          onPressed: () {
//                  Navigator.of(context).pushNamed(HomePage.tag);
          },
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
          onPressed: () {
//                  Navigator.of(context).pushNamed(AboutUs.tag);
          },
          child: Text("Contact Us",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );

    return new CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverList(
            delegate: new SliverChildListDelegate(
              <Widget>[
                SizedBox(height: 15.0),
                emailButton,
                SizedBox(height: 15.0),
                passButton,
                SizedBox(height: 15.0),
                logout,
                SizedBox(height: 15.0),
                aboutUs,
                SizedBox(height: 15.0),
                contact,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
