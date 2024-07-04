import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../comman/sizes.dart';

class Usre extends StatelessWidget {
  const Usre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                Text('Hi Prashant', style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(
                  height: Sizes.xs,
                ),
                Row(
                  children: [
                    Icon(Iconsax.location),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Please slect your location',
                     style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 200,
            ),
            Positioned(right: 50, child: Icon(Iconsax.scan_barcode)),
          ],
        ),
      ),
    );
  }
}
