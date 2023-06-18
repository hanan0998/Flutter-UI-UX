import 'package:flutter/material.dart';

import '../../../../../constants/text_string.dart';

class SearchBoxwidget extends StatelessWidget {
  const SearchBoxwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 5))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          hDashboardSearch,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.4)),
        ),
        const Icon(
          Icons.mic,
          size: 25,
        )
      ]),
    );
  }
}
