import 'package:flutter/material.dart';
import 'login.dart';
import 'aboutus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BirdBrain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
              icon: Icon(Icons.more),
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

  var course = [
    {"name": "Mathematics", "image": "picture.png"},
    {"name": "General Science", "image": "picture.png"},
    {"name": "Health Science", "image": "picture.png"},
    {"name": "Social Studies", "image": "picture.png"},

    {"name": "Mathematics", "image": "picture.png"},
    {"name": "Physics", "image": "picture.png"},
    {"name": "Biology", "image": "picture.png"},
    {"name": "Chemistry", "image": "picture.png"},
    {"name": "Combined Science", "image": "picture.png"},
    {"name": "History", "image": "picture.png"},
    {"name": "Geography", "image": "picture.png"},
    {"name": "Office Procedures", "image": "picture.png"},
    {"name": "Economics", "image": "picture.png"},
  ];

  @override
  Widget build(BuildContext context) {


    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 2,
            mainAxisSpacing: 40.0,
            crossAxisSpacing: 40.0,
//            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new GridView.count(
        crossAxisCount: 2,
        children: listCourses,
      ),
    );




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
      height: 300.0,
      color: Colors.yellow,
    );
  }
}
