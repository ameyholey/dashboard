import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(10),
      color: Colors.white54,
      height: 100,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: CircleAvatar(
                    child: Image(image: AssetImage('assets/images/cms.png'),))),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text('91923456787'),
                  Text('jio postpaid'),
                  Text('bill amount \$ 1234'),
                ],
              ),
            ),
            ElevatedButton(
             
              onPressed: () {},
              child: Text('Pay'),
            )
          ],
        ),
      ),
    );
  }
}
