// import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/core/screens/dashboard/widgets/banner_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../../../constants/image_strings.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/categories_widget.dart';
import 'widgets/course_detail_widget.dart';
import 'widgets/search_box_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ImplementedAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(hDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hDashboardTitle,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Text(
                hDashboardHeading,
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: hDashboardPadding,
              ),
              // search box
              SearchBoxwidget(),

              const SizedBox(
                height: hDashboardPadding,
              ),

              // categories
              CategoriesWidget(),

              const SizedBox(
                height: hDashboardPadding,
              ),

              // banner
              BannerWidget(),
              SizedBox(
                height: hDashboardPadding,
              ),
              Text(
                hDashboardTopCourses,
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              CourseDetailListViewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
