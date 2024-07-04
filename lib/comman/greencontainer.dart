import 'package:flutter/material.dart';
import 'package:userui/comman/sizes.dart';

import '../containers/searchbar.dart';
import 'card.dart';
class GreeenContainer extends StatelessWidget {
  const GreeenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        children: [
          Text('Upcoming Bills'),
          SizedBox(
            height: Sizes.md,
          ),
          SizedBox(

            child: Column(
              children: [
                Center(child:
                card(),),
                Searchbar(),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

