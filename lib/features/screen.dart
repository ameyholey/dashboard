import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:userui/comman/row.dart';

import '../comman/buttons.dart';
import '../comman/card.dart';
import '../comman/greencontainer.dart';
import '../comman/imageslider.dart';
import '../comman/sizes.dart';
import '../comman/slider.dart';
import '../containers/circularimage.dart';
import '../containers/searchbar.dart';
import '../widgets/appbar.dart';
import '../widgets/userdetails.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),
            SizedBox(
              height: Sizes.md,
            ),
            Usre(),
            SizedBox(
              height: Sizes.md,
            ),
            GreeenContainer(),
            SizedBox(
              height: Sizes.md,
            ),
            Buttons(),
            SizedBox(
              height: Sizes.md,
            ),
            Arow(),
            SizedBox(
              height: Sizes.md,
            ),
            Arow(),
            SizedBox(
              height: Sizes.md,
            ),
            APromoSlider(),
          ],
        ),
      ),
    );
  }
}

