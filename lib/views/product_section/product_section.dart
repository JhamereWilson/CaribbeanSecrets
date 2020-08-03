import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
  
      children: [
        Text("Most Popular Products", style: TextStyle(fontSize: 42, color: Colors.white, fontWeight: FontWeight.w100),),
        SizedBox(height: 50),
        Container(
          height: 400,
          width: 2400,
          decoration: BoxDecoration(
            color: Colors.grey[900],
          ),
        ),
      ],
    );
  }
}
