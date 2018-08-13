import 'package:flutter/material.dart';
import 'package:quiz/home/bjccourses.dart';
import 'package:quiz/question/dialog.dart';

class BJCCourseBox extends StatelessWidget {
  final BJCCourse bjccourse;
  final bool horizontal;

  BJCCourseBox(this.bjccourse, {this.horizontal = true});

  @override
  Widget build(BuildContext context) {
    final courseCard = new Column(
      children: <Widget>[
        new Image(
          image: new AssetImage(bjccourse.image),
          height: 80.0,
          width: 80.0,
        ),
        new SizedBox(height: 15.0),
        new Text(
          bjccourse.name,
          style: new TextStyle(
            letterSpacing: 1.0,
            fontWeight: FontWeight.w700,
            fontSize: 15.0,
            color: Colors.black54,
          ),
        ),
      ],
    );

    return new GestureDetector(
      onTap: horizontal
          ? () => Navigator.of(context).push(
                new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new PopUp(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          new FadeTransition(opacity: animation, child: child),
                ),
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
          ],
        ),
      ),
    );
  }
}
