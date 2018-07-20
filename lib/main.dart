import 'package:flutter/material.dart';
import 'package:quiz/courses.dart';
import 'login.dart';
import 'aboutus.dart';

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
  List<Container> listCourses = new List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget> [
          new GradientAppBar(),
          new HomePageBody(),
        ],
      ),
    );
  }
}





class GradientAppBar extends StatelessWidget {

  final title = 'BirdBrain';
  final double barHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container (
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center (
        child: new Text (
          title,
          style: const TextStyle(
            color: Colors.white,
//            fontFamily:
            fontWeight: FontWeight.w600,
            fontSize: 36.0
          )
        ),
      ),
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 0.5],
                tileMode: TileMode.clamp
        ),
     ),
    );
  }
}

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Subject();
  }
}





















class Settings extends StatefulWidget {
  @override
  SettingsState createState() => new SettingsState();
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final emailButton = Padding(
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

    final passButton = Padding(
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

    final logout = Padding(
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

    final aboutUs = Padding(
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

    final contact = Padding(
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              SizedBox(height: 48.0),
              emailButton,
              SizedBox(height: 8.0),
              passButton,
              SizedBox(height: 24.0),
              logout,
              SizedBox(height: 8.0),
              aboutUs,
              SizedBox(height: 8.0),
              contact,
            ]),
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
      height: 600.0,
      color: Colors.yellow,
    );
  }
}
