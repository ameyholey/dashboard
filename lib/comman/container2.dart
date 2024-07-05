import 'package:flutter/material.dart';
class Container2 extends StatelessWidget {
  const Container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi! Prashant',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  'Please select your location',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.red, // Button background color
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                ),
                onPressed: () {
                  // Define button action here
                },
                child: Icon(
                  Icons.qr_code,
                  color: Colors.white, // Icon color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}