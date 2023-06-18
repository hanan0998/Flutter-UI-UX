import 'package:app_login/src/constants/image_strings.dart';

class TopCourseModel {
  final String heading;
  final String title;
  final String subTitle;
  final String? image;

  TopCourseModel(this.heading, this.title, this.subTitle, this.image);
  static List<TopCourseModel> list = [
    TopCourseModel("Flutter Crash Course", "3 Sections",
        "Programming Languages", hTopCoursImage1),
    TopCourseModel(
        "HTML/CSS Crash Course", "2 Sections", "35 Lessons", hTopCoursImage2),
    TopCourseModel("Material Design Course", "6 Sections",
        "Programming & Design", hTopCoursImage3),
  ];
}
