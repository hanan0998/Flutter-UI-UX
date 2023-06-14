import 'package:app_login/src/common%20widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../constants/image_strings.dart';
import 'fade_in_animation_controller.dart';
class hfadeInAnimation extends StatelessWidget {
  final int durationMs;
  final hAnimatePosition? animate;
  final Widget child;
hfadeInAnimation({
    required this.durationMs,
   this.animate,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration:  Duration(milliseconds: durationMs),
        bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
        left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
        
        child: AnimatedOpacity(
          duration:  Duration(milliseconds: durationMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child
          
          
        ),
      ),
    );
  }
}
