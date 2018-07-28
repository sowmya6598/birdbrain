import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/home/appbar.dart';
import 'package:quiz/home/homepagebody.dart';
import 'package:quiz/settings/settingsbody.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'BirdBrain',
      theme: ThemeData(
        primaryColor: Color(0xFFE08284),
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



class Settings extends StatefulWidget{
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new Column(
        children: <Widget>[new SettingsBody()],
      ),
    );
  }
}








class More extends StatefulWidget {
  @override
  MoreState createState() => MoreState();
}

class MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Colors.green,
    );
  }
}
