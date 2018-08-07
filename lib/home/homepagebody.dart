import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/home/bjccourses.dart';
import 'package:quiz/home/bjccoursebox.dart';
import 'package:quiz/home/coursebox.dart';
import 'package:quiz/home/courses.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverGrid(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: new SliverChildBuilderDelegate(
                (context, int index) => new CourseBox(courses[index]),
                childCount: courses.length,
              ),
            ),
            new SliverGrid(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: new SliverChildBuilderDelegate(
                (context, int index) => new BJCCourseBox(bjccourses[index]),
                childCount: bjccourses.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
