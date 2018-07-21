import 'package:flutter/material.dart';
import 'package:quiz/home/appbar.dart';
import 'package:quiz/home/homepagebody.dart';
import 'package:quiz/settings/aboutus.dart';
import 'package:quiz/settings/settingsbody.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BirdBrain',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Numito',
      ),
      home: LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  Home home;
  Settings settings;
  More more;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    home = Home();
    settings = Settings();
    more = More();

    pages = [home, settings, more];

    currentPage = home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (int index) {
            setState(() {
              currentTab = index;
              currentPage = pages[index];
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Account"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              title: Text("More"),
            ),
          ]),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[new GradientAppBar(), new HomePageBody()],
      ),
    );
  }
}

class Settings extends StatefulWidget {



  @override
 _SettingsState createState() => new _SettingsState();
}

class _SettingsState extends State<Settings> {










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







//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Column(
//        children: <Widget>[new SettingsBody()],
//      ),
//    );
//  }
}


class More extends StatefulWidget {
  @override
  MoreState createState() => MoreState();
}

class MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      color: Colors.yellow,
    );
  }
}
