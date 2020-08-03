import 'package:flutter/material.dart';

class MockTextField extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 800,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white70,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
        child: Center(
          child: Text(
          "Enter Email Address",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
            color: Colors.black45,
          ),
      ),
        ),
    );
  }
}