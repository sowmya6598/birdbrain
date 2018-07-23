import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/picture.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = new RaisedButton(
      onPressed:() {
        Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) => new HomePage())
        );
      } ,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      elevation: 4.0,
      color: const Color.fromRGBO(224, 130, 132, 1.0),
//      borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
      child: new Text(
        'Sign In',
        style: new TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5, ),
    ),);

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );


    final googleButton = new RaisedButton(
      child: const Text('Connect with Google'),
      color: Theme.of(context).accentColor,
      elevation: 4.0,
      splashColor: Colors.blue,
      onPressed: () {
        },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 22.0),
            forgotLabel,
            loginButton,
            SizedBox(height: 15.0),
            googleButton
          ],
        ),
      ),
    );
  }
}
