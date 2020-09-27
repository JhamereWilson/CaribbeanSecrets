import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          width: 800,
          height: 800,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              width: 700,
              height: 400,
              decoration: BoxDecoration(color: Colors.green),
            ),
            SizedBox(height: 10),
            Container(
              width: 700,
              height: 400,
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ],
        ),
      ],
    );
  }
}
