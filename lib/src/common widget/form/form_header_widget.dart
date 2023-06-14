import 'package:flutter/material.dart';

// import '../../constants/image_strings.dart';
// import '../../constants/text_string.dart';

class FormHeaderWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  FormHeaderWidget({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  // final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
