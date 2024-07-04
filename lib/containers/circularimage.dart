import 'package:flutter/material.dart';


import '../comman/helperFunctions.dart';

class Circularimage extends StatelessWidget {
  const Circularimage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkimage = false,
    this.overlaycolor,
    this.backgroundColor,
    this.width =56,
    this.height = 56,
    this.padding = 8.0,
  });

  final BoxFit? fit;

  final String image;
  final isNetworkimage;

  final overlaycolor;
  final backgroundColor;
  final width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? HelperFunctions.isDarkMode(context)
            ? Colors.black
            : Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkimage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlaycolor,
      ),
    );
  }
}
