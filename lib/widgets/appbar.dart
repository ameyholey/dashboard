import 'package:flutter/material.dart';

import '../containers/circularimage.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [

          Circularimage(image: 'assets/images/cms.png' ,),
          SizedBox(width: 200,),
          Circularimage(image: 'assets/images/cms.png'   ,),
          SizedBox(width:40,),
          Icon(Icons.menu),
          SizedBox(width:40,),
          Icon(Icons.notifications)
        ],
      ),
    );
  }
}
