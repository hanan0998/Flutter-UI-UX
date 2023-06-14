import 'package:flutter/material.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title, Subtitle;
  final VoidCallback onTap;
  const ForgetPasswordButtonWidget({
    required this.icon,
    required this.Subtitle,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
        child: Row(children: [
          Icon(
            icon,
            size: 60.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(Subtitle,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.displaySmall),
            ],
          )
        ]),
      ),
    );
  }
}
