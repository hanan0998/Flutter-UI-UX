import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
 Image(image: AssetImage(hLoginScreeImage), height: size.height * 0.2,),
          Text(hLoginTitle, style: Theme.of(context).textTheme.headlineSmall),
          Text(hLoginSubTitle,     style: Theme.of(context).textTheme.bodySmall,), 
      ],
    );
  }
}