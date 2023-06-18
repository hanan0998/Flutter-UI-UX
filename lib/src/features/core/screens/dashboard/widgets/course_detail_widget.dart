import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/top_course_model.dart';

class CourseDetailListViewWidget extends StatelessWidget {
  const CourseDetailListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = TopCourseModel.list;
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => SizedBox(
          width: 350,
          // height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, right: 10),
            child: Container(
              // height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: HCardbgColor),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // first Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].heading,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: 110,
                          child: Image(
                            image: AssetImage(
                                // list[index].image!,
                                hTopCoursImage1),
                            // height: 110,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.play_arrow),
                        style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      ),
                      const SizedBox(
                        width: hDashboardCardPadding,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].title,
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            list[index].subTitle,
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.normal),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
