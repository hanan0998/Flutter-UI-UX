import 'package:flutter/material.dart';

// import '../../constants/image_strings.dart';
// import '../../constants/text_string.dart';

class FormHeaderWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double? height;
  final CrossAxisAlignment crossAxisAlignments;
  final double? heightBetween;

  FormHeaderWidget({
    required this.image,
    required this.title,
    required this.subtitle,
    this.height = 0.2,
    this.crossAxisAlignments = CrossAxisAlignment.start,
    this.heightBetween = 0,
  });

  // final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignments,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * height!,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
