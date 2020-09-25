import 'package:flutter/material.dart';

class CheckoutForm extends StatefulWidget {
  @override
  _CheckoutFormState createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.35),
              focusColor: Colors.grey[900].withOpacity(0.35),
              filled: true,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red, width: 0.75, style: BorderStyle.solid),
              ),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.65),
                    focusColor: Colors.grey[900].withOpacity(0.65),
                    filled: true,
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // errorBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // disabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.35),
                    focusColor: Colors.grey[900].withOpacity(0.35),
                    filled: true,
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // errorBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // disabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.65),
              focusColor: Colors.grey[900].withOpacity(0.65),
              filled: true,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // errorBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              labelText: "Address 1",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.35),
              focusColor: Colors.grey[900].withOpacity(0.35),
              filled: true,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // errorBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              labelText: "Address 2",
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
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[900].withOpacity(0.65),
                    focusColor: Colors.grey[900].withOpacity(0.65),
                    filled: true,
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // errorBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    // disabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 0.75,
                    //         style: BorderStyle.solid)),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
              decoration: InputDecoration(
                fillColor: Colors.grey[900].withOpacity(0.35),
                focusColor: Colors.grey[900].withOpacity(0.35),
                filled: true,
                // border: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Colors.white,
                //         width: 0.75,
                //         style: BorderStyle.solid)),
                // focusedBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Colors.white,
                //         width: 0.75,
                //         style: BorderStyle.solid)),
                // enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Colors.white,
                //         width: 0.75,
                //         style: BorderStyle.solid)),
                // errorBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Colors.white,
                //         width: 0.75,
                //         style: BorderStyle.solid)),
                // disabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Colors.white,
                //         width: 0.75,
                //         style: BorderStyle.solid)),
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
            keyboardType: TextInputType.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.65),
              focusColor: Colors.grey[900].withOpacity(0.65),
              filled: true,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // errorBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
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
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
            decoration: InputDecoration(
              fillColor: Colors.grey[900].withOpacity(0.35),
              focusColor: Colors.grey[900].withOpacity(0.35),
              filled: true,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // errorBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         color: Colors.white,
              //         width: 0.75,
              //         style: BorderStyle.solid)),
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
