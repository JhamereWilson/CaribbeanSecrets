import 'package:flutter/material.dart';

class SubscribeButton extends StatelessWidget {
  final String title;
  const SubscribeButton(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
