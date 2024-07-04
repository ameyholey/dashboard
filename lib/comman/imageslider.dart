import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';

import 'package:userui/comman/roundedimage.dart';
import 'package:userui/comman/sizes.dart';

import '../containers/circularimage.dart';
import '../controllers/homecontroller.dart';
import 'card.dart';
import 'cicularcontainer.dart';
import 'colors.dart';

class APromoSlider extends StatelessWidget {
  const APromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatepageIndicator(index),
          ),
          items: const [
            RoundedImage(imageUrl:'assets/images/cms.png' ),
            RoundedImage(imageUrl:'assets/images/cms.png' ),
            RoundedImage(imageUrl:'assets/images/cms.png' ),
          ],
        ),
        // SizedBox(
        //   height: Sizes.xs,
        // ),
        // Center(
        //   child: Obx(
        //     () => Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         for (int i = 0; i < 3; i++)
        //           CircularContainer(
        //             height: 4,
        //             width: 20,
        //             margin: EdgeInsets.only(right: 10),
        //             backgroundColor: controller.carousalCurrentIndex.value == i
        //                 ? AColors.primary
        //                 : AColors.grey,
        //           ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
