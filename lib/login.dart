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
        radius: 60.0,
        child: Image.asset('assets/picture.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 10.0, 20.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(23.0))),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 10.0, 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(23.0)),
      ),
    );

    final loginButton = new RaisedButton(
      onPressed: () {
        Navigator
            .of(context)
            .push(new MaterialPageRoute(builder: (context) => new HomePage()));
      },
      padding: EdgeInsets.symmetric(vertical: 16.0),
      elevation: 2.0,
      color: const Color.fromRGBO(224, 130, 132, 1.0),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(23.0)),
      child: new Text(
        'Sign In',
        style: new TextStyle(
          color: Colors.white,
          fontSize: 15.0,
//          fontFamily: ,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      padding: EdgeInsets.only(top: 13.0, bottom: 10.0),
      onPressed: () {},
    );

    final or = new Container(
      alignment: FractionalOffset.center,
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        "- or sign in with - ",
        style: TextStyle(color: Colors.black54),
      ),
    );

//    Widget facebook = new MaterialButton(
//      height: 10.0,
//      minWidth: 10.0,
//      child: const Text('Connect with Facebook'),
//      color: Theme.of(context).accentColor,
//      elevation: 4.0,
//      splashColor: Colors.blue,
//      onPressed: () {},
//    );

    Widget google = new IconButton(
      iconSize: 70.0,
      icon: new Image.asset('assets/google.png'),
      splashColor: Colors.white,
      onPressed: () {},
    );

    Widget buildButton(IconData icon) {
      final Color tintColor = Color.fromRGBO(224, 130, 132, 1.0);

      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
//          new Container(
//            decoration: new BoxDecoration(
//                border: new Border.all(color: Color.fromRGBO(224, 130, 132, 1.0))
//            ),
//          )
        ],
      );
    }

    Widget googlefacebook = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[buildButton(Icons.favorite), google],
      ),
    );

    final register = FlatButton(
      child: Text(
        'Don\'t have an account?  Sign Up',
        style: TextStyle(color: Colors.black54),
      ),
      padding: EdgeInsets.only(top: 10.0),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            logo,
            SizedBox(height: 40.0),
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 25.0),
            loginButton,
            forgotLabel,
            or,
            SizedBox(height: 5.0),
            googlefacebook,
            register
          ],
        ),
      ),
    );
  }
}
