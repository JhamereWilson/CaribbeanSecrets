import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class CheckoutWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Center(
      child: EasyWebView(
        src: url,
        onLoaded: () => print("view loaded"),
        isHtml: false,
        height: 230,
        width: 400,
      ),
    );
  }

  String get url => "/web/payment.html";
}
