import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: TextField(
        decoration: InputDecoration(

            prefixIcon: Icon(Iconsax.search_normal),
            suffixIcon: Icon(Iconsax.microphone),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
