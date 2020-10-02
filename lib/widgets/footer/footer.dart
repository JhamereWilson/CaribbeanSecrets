import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ScreenDimensions(context).screenWidth,
      height: 175,
      child: Column(
        children: [
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 0.5,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FooterItem('Home'),
                  SizedBox(height: 5),
                  FooterItem('Shop'),
                  SizedBox(height: 5),
                  FooterItem('Blog'),
                  SizedBox(height: 5),
                  FooterItem('Our Story'),
                ],
              ),
              Column(
                children: [
                  FooterItem('Privacy'),
                  SizedBox(height: 5),
                  FooterItem('Shipping'),
                  SizedBox(height: 5),
                  FooterItem('Terms & Conditions'),
                ],
              ),
              Column(
                children: [
                  FooterItem('Facebook'),
                  SizedBox(height: 5),
                  FooterItem('Instagram'),
                  SizedBox(height: 5),
                  FooterItem('Youtube'),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "2020 Caribbean Secrets.",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final String title;

  const FooterItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
    );
  }
}
