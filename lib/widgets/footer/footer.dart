import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    navigateTo(String routeName) {
      Navigator.of(context).pushNamed(routeName);
    }

   _launchURL(String url) async {
 
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
                  FooterItem(
                    'Home',
                    navigateTo(HomeRoute),
                  ),
                  SizedBox(height: 5),
                  FooterItem('Shop Oil', navigateTo(ShopRoute)),
                  SizedBox(height: 5),
                  FooterItem('Secret Collection', navigateTo(CollectionRoute)),
                  SizedBox(height: 5),
                  FooterItem('Our Story', navigateTo(AboutRoute)),
                ],
              ),
              Column(
                children: [
                  FooterItem(
                    'Privacy',
                    navigateTo(AboutRoute),
                  ),
                  SizedBox(height: 5),
                  FooterItem('Shipping', navigateTo(AboutRoute)),
                  SizedBox(height: 5),
                  FooterItem('Terms & Conditions', navigateTo(AboutRoute)),
                ],
              ),
              Column(
                children: [
                  FooterItem('Facebook', () async => _launchURL("https://www.facebook.com/caribbeansecretscosmetics")),
                  SizedBox(height: 5),
                  FooterItem('Instagram', () async => _launchURL("https://www.instagram.com/caribbeansecretscosmetics/")),
                  SizedBox(height: 5),
                  FooterItem('Youtube', () async => _launchURL("https://www.youtube.com/channel/UCWuDlVqI9B1qaOGwjkKcIwg")),
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
  final Function action;

  const FooterItem(this.title, this.action);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
      ),
    );
  }
}
