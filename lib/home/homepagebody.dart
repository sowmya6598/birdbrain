import 'package:flutter/material.dart';
import 'package:quiz/home/coursebox.dart';
import 'package:quiz/home/courses.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                      (context, index) => new CourseBox(courses[index]),
                  childCount: courses.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

