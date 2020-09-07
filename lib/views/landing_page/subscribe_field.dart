import 'package:flutter/material.dart';

class SubscribeField extends StatefulWidget {
  @override
  _SubscribeFieldState createState() => _SubscribeFieldState();
}

class _SubscribeFieldState extends State<SubscribeField> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        controller: _emailController,
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w100),
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          contentPadding:
              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          labelText: 'Enter Email Address',
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
