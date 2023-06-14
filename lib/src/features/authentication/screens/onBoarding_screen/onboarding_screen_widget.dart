import 'package:flutter/material.dart';

// import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class onBoardingScreenWidget extends StatelessWidget {
  onBoardingScreenWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(hDefaultSize),
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(model.title,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(
                height: 10,
              ),
              Text(
                model.subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
          Text(
            model.counter,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
