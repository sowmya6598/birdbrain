import 'package:flutter/material.dart';
import 'package:quiz/home/courses.dart';
import 'package:quiz/home/dialog.dart';


class CourseBox extends StatelessWidget {

  final Course course;
  final bool horizontal;

  CourseBox(this.course, {this.horizontal = true});

  @override
  Widget build(BuildContext context) {

    final courseThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: FractionalOffset.topLeft,
      child: new Hero(
        tag: "course-hero-${course.id}",
        child: new Image(
          image: new AssetImage(course.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    final courseCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(course.name,
          ),
        ],
      ),
    );

    final courseCard = new Container(
      child: courseCardContent,
      height: 100.0,
      width: 200.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Colors.red, Colors.cyan],
        ),
        color: new Color(0xFF999999),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
          new PageRouteBuilder(
            pageBuilder: (_, __, ___) => new PopUp(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
        child: new Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              courseCard,
              courseThumbnail,
            ],
          ),
        )
    );
  }
}
