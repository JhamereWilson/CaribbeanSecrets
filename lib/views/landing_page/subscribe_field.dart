import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SubscribeField extends StatefulWidget {
  final Function subscribeStatusChanged;

  const SubscribeField({this.subscribeStatusChanged});
  @override
  _SubscribeFieldState createState() => _SubscribeFieldState();
}

class _SubscribeFieldState extends State<SubscribeField> {
  TextEditingController _emailController = TextEditingController();
  String email;
  String sentResponse;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  fontSize: 24,
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
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
          height: 40,
        ),
        Container(
          height: 50,
          width: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white12,
              border: Border.all(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          child: FlatButton(
            onPressed: () async {
              widget.subscribeStatusChanged();

              // if (_formKey.currentState.validate()) {
              //   _formKey.currentState.save();
              //   final response = await http.post(
              //     "https://us-central1-caribbean-secrets.cloudfunctions.net/createCustomer",
              //     headers: {
              //       'Content-Type': 'application/json; charset=UTF-8',
              //       'Accept': 'application/json',
              //       'Access-Control-Allow-Origin': '*',
              //     },
              //     body: jsonEncode({"email": email}),
              //   );
              //   if (response.statusCode == 200) {
              //     setState(() {
              //       sentResponse = "Check your email!";
              //       isLoading = false;
              //       _emailController.clear();

              //       print(email);
              //       print(response);
              //     });
              //   } else {
              //     setState(() {
              //       sentResponse = response.body;
              //       isLoading = false;
              //     });
              //   }
              // }
            },
            child: Text(
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
