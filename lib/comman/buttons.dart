import 'package:flutter/material.dart';
import 'package:userui/comman/sizes.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Recently Used'),

          ),
          SizedBox(
            width: Sizes.spaceBtwItems,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Goverment Services')),
          SizedBox(
            width: Sizes.spaceBtwItems,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Recharge ')),
        ],
      ),
    );
  }
}
