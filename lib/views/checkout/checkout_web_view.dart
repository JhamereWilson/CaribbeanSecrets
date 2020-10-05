
import 'dart:io';

import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';


class CheckoutWebView extends StatefulWidget {
  final String url;

  const CheckoutWebView({Key key, this.url}) : super(key: key);

  @override
  _CheckoutWebViewState createState() => _CheckoutWebViewState();
}

class _CheckoutWebViewState extends State<CheckoutWebView> {
  @override
  Widget build(BuildContext context) {
    print("URL" + widget.url);
    return EasyWebView(
      headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true",
        },
      src: uRL,
      onLoaded: () => print("Webview loaded"),
      isHtml: false,
      isMarkdown: false,
      height: 800,
      width: 800,
    );
  }

   String get uRL => widget.url;
}
