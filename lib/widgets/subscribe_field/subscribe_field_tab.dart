import 'dart:convert';

import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class SubscribeFieldTablet extends StatefulWidget {
  @override
  _SubscribeFieldTabletState createState() => _SubscribeFieldTabletState();
}

class _SubscribeFieldTabletState extends State<SubscribeFieldTablet> {
  TextEditingController _emailController = TextEditingController();
  String email;
  String sentResponse;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    num screenHeight = ScreenDimensions(context).screenHeight;
    num screenWidth = ScreenDimensions(context).screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: TextFormField(
              textAlign: TextAlign.center,
              controller: _emailController,
              onSaved: (email) => this.email = email,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter an email address';
                }
                return null;
              },
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid)),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid)),
                contentPadding: EdgeInsets.only(
                    left: screenWidth * .02,
                    bottom: screenHeight * .0125,
                    top: screenHeight * .0125,
                    right: screenWidth * .02),
                labelText: 'Enter Email Address',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.025,
        ),
        Container(
          height: screenHeight * .03,
          width: screenWidth / 3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white12,
              border: Border.all(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          child: FlatButton(
            onPressed: () async {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
              setState(() {
                isLoading = true;
                subscribe.subscribeUser(email);
              });
            },
            child: isLoading
                ? Container(
                    height: 20,
                    width: 20,
                    child: Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.redAccent),
                        strokeWidth: 1,
                      ),
                    ),
                  )
                : Text(
                    "SUBSCRIBE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
          ),
        ),
      ],
    );
  }
}
