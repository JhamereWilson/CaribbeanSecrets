import 'package:flutter/material.dart';

class CheckoutForm extends StatefulWidget {
  @override
  _CheckoutFormState createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String fName;
  String lName;
  String address;
  String state;
  String zip;
  String city;
  String phoneNum;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (email) => this.email = email,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter an email address';
              }
              return null;
            },
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.35),
              focusColor: Colors.grey[900].withOpacity(0.35),
              filled: true,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red, width: 0.75, style: BorderStyle.solid),
              ),
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              labelText: "Email Address",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onSaved: (fName) => this.fName = fName,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.65),
                    focusColor: Colors.grey[900].withOpacity(0.65),
                    filled: true,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    labelText: "First Name",
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  onSaved: (lName) => this.lName = lName,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.35),
                    focusColor: Colors.grey[900].withOpacity(0.35),
                    filled: true,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    labelText: "Last Name",
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onSaved: (state) => this.state = state,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your state of residence';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.65),
                    focusColor: Colors.grey[900].withOpacity(0.65),
                    filled: true,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    labelText: "State",
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  onSaved: (zip) => this.zip = zip,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter an appropriate zip code';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.35),
                    focusColor: Colors.grey[900].withOpacity(0.35),
                    filled: true,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    labelText: "Zip Code",
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          TextFormField(
            onSaved: (city) => this.city = city,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your city of residence';
              }
              return null;
            },
            keyboardType: TextInputType.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.65),
              focusColor: Colors.grey[900].withOpacity(0.65),
              filled: true,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              labelText: "City",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            onSaved: (phoneNum) => this.phoneNum = phoneNum,
            validator: (value) {
              if (value.length > 10 ||
                  value.contains(RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)'))) {
                return 'Please enter a 10 digit phone number';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.35),
              focusColor: Colors.grey[900].withOpacity(0.35),
              filled: true,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              labelText: "Phone Number",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 400,
            height: 35,
            child: FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  "Go To Payment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                )),
          )
        ],
      ),
    );
  }
}
