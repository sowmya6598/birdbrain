class BJCCourse {
  final String id;
  final String name;
  final String image;

  const BJCCourse({this.id, this.name, this.image});
}

List<BJCCourse> bjccourses = [

  const BJCCourse(
      id: "bjc_math",
      name: "Mathematics",
      image: "assets/picture.png"
  ),
  const BJCCourse(
      id: "bjc_healthscience",
      name: "Health Science",
      image: "assets/picture.png"
  ),
  const BJCCourse(
      id: "bjc_generalscience",
      name: "General Science",
      image: "assets/picture.png"
  ),
  const BJCCourse(
      id: "bjc_socialstudies",
      name: "Social Studies",
      image: "assets/picture.png"
  ),
];