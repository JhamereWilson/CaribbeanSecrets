import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout_web_view.dart';

class CheckoutScreen extends StatefulWidget {
  static const routeName = '/checkout';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  TextEditingController _controller;
  String promoCode;
  String cardName;
  String promoMessage;
  String cardNum;

  bool promoSuccess = false;
  bool promoFail = false;
  final _formKey = GlobalKey<FormState>();
  final _payFormKey = GlobalKey<FormState>();

  var promoCodes = [
    "JAS11",
    "ANA11",
    "NEMY11",
    "DANA11",
    "MONET11",
    "SHAWN11",
    "ROSE11",
    "JOR11",
    "TATI11",
    "TIO11",
    "ADR11",
    "ALLI11",
    "TY11",
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: CheckoutWebView(
        height: ScreenDimensions(context).screenHeight / 1.2,
        width: ScreenDimensions(context).screenWidth/1.2,
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: Column(
    //     children: [
    //       NavigationBarTabDesk(),
    //       Expanded(
    //         child: Container(
    //           height: MediaQuery.of(context).size.height,
    //           child: CenteredView(
    //             child: ListView(
    //               children: [
    //                 Container(
    //                   height: 100,
    //                   decoration: BoxDecoration(
    //                     image: DecorationImage(
    //                         image: AssetImage("/images/CSwebsite-5.jpg"),
    //                         fit: BoxFit.cover),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       "Checkout",
    //                       style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 48,
    //                           fontWeight: FontWeight.w700),
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(height: 20),
    //                 SizedBox(height: 20),
    //                 Container(
    //                   height: 0.25,
    //                   width: 50,
    //                   color: Colors.white,
    //                 ),
    //                 SizedBox(height: 20),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Container(
    //                       height: 700,
    //                       width: 600,
    //                       padding: EdgeInsets.all(20),
    //                       decoration: BoxDecoration(
    //                         // color: Colors.white,
    //                         border: Border.all(
    //                             color: Colors.white,
    //                             width: 1,
    //                             style: BorderStyle.solid),
    //                       ),
    //                       child: ListView(
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.center,
    //                             child: Text(
    //                               'Shipping',
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 24,
    //                                   fontWeight: FontWeight.w100),
    //                             ),
    //                           ),
    //                           SizedBox(height: 10),
    //                           CheckoutForm(),
    //                         ],
    //                       ),
    //                     ),
    //                     SizedBox(width: 10),
    //                     Container(
    //                       padding: EdgeInsets.all(10),
    //                       decoration: BoxDecoration(
    //                           border: Border.all(
    //                               color: Colors.white,
    //                               width: 0.5,
    //                               style: BorderStyle.solid)),
    //                       height: 700,
    //                       width: 400,
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             "Enter Promo Code",
    //                             style: TextStyle(
    //                                 color: Colors.white,
    //                                 fontSize: 18,
    //                                 fontWeight: FontWeight.w100),
    //                           ),
    //                           SizedBox(
    //                             height: 10,
    //                           ),
    //                           !promoSuccess
    //                               ? Column(
    //                                   children: [
    //                                     Row(
    //                                       mainAxisAlignment:
    //                                           MainAxisAlignment.spaceBetween,
    //                                       children: [
    //                                         SizedBox(
    //                                           width: 200,
    //                                           height: 35,
    //                                           child: Form(
    //                                             key: _formKey,
    //                                             child: TextFormField(
    //                                               controller: _controller,
    //                                               onSaved: (promoCode) => this
    //                                                   .promoCode = promoCode,
    //                                               validator: (value) {
    //                                                 if (value.isEmpty) {
    //                                                   return 'Please enter a code';
    //                                                 }
    //                                                 return null;
    //                                               },
    //                                               textAlign: TextAlign.center,
    //                                               style: TextStyle(
    //                                                   color: Colors.white,
    //                                                   fontSize: 18,
    //                                                   fontWeight:
    //                                                       FontWeight.w100),
    //                                               decoration: InputDecoration(
    //                                                 border: OutlineInputBorder(
    //                                                     borderSide: BorderSide(
    //                                                         color: Colors.white,
    //                                                         width: 1,
    //                                                         style: BorderStyle
    //                                                             .solid)),
    //                                                 focusedBorder:
    //                                                     OutlineInputBorder(
    //                                                         borderSide: BorderSide(
    //                                                             color: Colors
    //                                                                 .white,
    //                                                             width: 1,
    //                                                             style:
    //                                                                 BorderStyle
    //                                                                     .solid)),
    //                                                 enabledBorder:
    //                                                     OutlineInputBorder(
    //                                                         borderSide: BorderSide(
    //                                                             color: Colors
    //                                                                 .white,
    //                                                             width: 1,
    //                                                             style:
    //                                                                 BorderStyle
    //                                                                     .solid)),
    //                                                 errorBorder: OutlineInputBorder(
    //                                                     borderSide: BorderSide(
    //                                                         color: Colors.white,
    //                                                         width: 1,
    //                                                         style: BorderStyle
    //                                                             .solid)),
    //                                                 disabledBorder:
    //                                                     OutlineInputBorder(
    //                                                         borderSide: BorderSide(
    //                                                             color: Colors
    //                                                                 .white,
    //                                                             width: 1,
    //                                                             style:
    //                                                                 BorderStyle
    //                                                                     .solid)),
    //                                                 contentPadding:
    //                                                     EdgeInsets.only(
    //                                                         left: 15,
    //                                                         bottom: 11,
    //                                                         top: 11,
    //                                                         right: 15),
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         SizedBox(
    //                                             width: 150,
    //                                             height: 35,
    //                                             child: FlatButton(
    //                                               color: Colors.red,
    //                                               onPressed: () {
    //                                                 if (_formKey.currentState
    //                                                     .validate()) {
    //                                                   _formKey.currentState
    //                                                       .save();
    //                                                   if (promoCodes.contains(
    //                                                       promoCode
    //                                                           .toUpperCase())) {
    //                                                     promoMessage =
    //                                                         "Code entered successfully!";
    //                                                     promoSuccess = true;
    //                                                   } else {
    //                                                     promoMessage =
    //                                                         "Sorry, wrong code.";
    //                                                     promoFail = true;
    //                                                   }

    //                                                   setState(() {});
    //                                                 }
    //                                                 print("submit tapped");
    //                                                 print(promoMessage);
    //                                               },
    //                                               child: Text(
    //                                                 "Submit",
    //                                                 style: TextStyle(
    //                                                     color: Colors.white,
    //                                                     fontSize: 16,
    //                                                     fontWeight:
    //                                                         FontWeight.w300),
    //                                               ),
    //                                             )),
    //                                       ],
    //                                     ),
    //                                     promoFail
    //                                         ? Text(
    //                                             promoMessage,
    //                                             style: TextStyle(
    //                                                 color: Colors.white,
    //                                                 fontSize: 12,
    //                                                 fontWeight:
    //                                                     FontWeight.w100),
    //                                           )
    //                                         : Container()
    //                                   ],
    //                                 )
    //                               : Text(
    //                                   promoMessage,
    //                                   style: TextStyle(
    //                                       color: Colors.white,
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w100),
    //                                 ),
    //                           SizedBox(height: 30),
    //                           Container(
    //                             height: 100,
    //                             child: ListView.builder(
    //                               // shrinkWrap: true,

    //                               scrollDirection: Axis.vertical,
    //                               itemCount: cart.items.length,
    //                               itemBuilder: (ctx, i) => (Container(
    //                                 height: 100,
    //                                 child: Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       cart.items.values.toList()[i].title +
    //                                           "(${cart.items.values.toList()[i].quantity.toString()})",
    //                                       style: TextStyle(
    //                                           color: Colors.white,
    //                                           fontSize: 16,
    //                                           fontWeight: FontWeight.w200),
    //                                     ),
    //                                     Text(
    //                                       '\$${cart.items.values.toList()[i].price.toStringAsFixed(2)}',
    //                                       style: TextStyle(
    //                                           color: Colors.white,
    //                                           fontSize: 16,
    //                                           fontWeight: FontWeight.w200),
    //                                     )
    //                                   ],
    //                                 ),
    //                               )),
    //                             ),
    //                           ),
    //                           CheckoutWebView(),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
