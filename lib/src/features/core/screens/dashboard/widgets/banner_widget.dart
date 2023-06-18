import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            // height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: HCardbgColor),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Image(
                      image: AssetImage(hBookMarkIcon),
                    )),
                    Flexible(
                        child: Image(
                      image: AssetImage(hBannerImage1),
                    )),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  hDashboardBannerTitle1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  hDashboardBannerSubTitle,
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: hDashboardCardPadding,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HCardbgColor),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                // child: ,\
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Image(
                          image: AssetImage(hBookMarkIcon),
                        )),
                        Flexible(
                            child: Image(
                          image: AssetImage(bBannerImage2),
                        )),
                      ],
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    Text(
                      hDashboardBannerTitle2,
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      hDashboardBannerSubTitle,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: Text(hDashboardButton)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
