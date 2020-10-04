import 'dart:html' as html;
import 'dart:ui';

import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets.dart';

class NavigationDrawer extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView(
        children: [
          NavigationDrawerHeader(),
          ExpansionTile(
            trailing: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            title: Text(
              "Shop",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
            children: [
              ListTile(
                onTap: () => Navigator.of(context).pushNamed(ShopRoute),
                title: Text(
                  "Haitian Castor Oil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
              ListTile(
                onTap: () => Navigator.of(context).pushNamed(CollectionRoute),
                title: Text(
                  "The Secret Collection",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
            ],
          ),
          ListTile(
            title: Text("SecretsTV",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () => Navigator.of(context).pushNamed(SecretsTVRoute),
          ),
          ListTile(
            title: Text("Our Story",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () => Navigator.of(context).pushNamed(AboutRoute),
          ),
         
          ExpansionTile(
            trailing: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            title: Text(
              "Follow Us On Social Media",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
            children: [
              ListTile(
                onTap: () {
                 _launchURL(
                      "https://www.facebook.com/caribbeansecretscosmetics");
                },
                leading: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                ),
                title: Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  _launchURL(
                      "https://www.youtube.com/channel/UCWuDlVqI9B1qaOGwjkKcIwg");
                },
                leading: Icon(FontAwesomeIcons.youtube, color: Colors.white),
                title: Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
               Divider(
            height: 0.25,
            thickness: 0.25,
            color: Colors.white,
          ),
              ListTile(
                onTap: () {
                 _launchURL(
                      "https://www.instagram.com/caribbeansecretscosmetics/");
                },
                leading: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                ),
                title: Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
            
            ],
          ),
            SizedBox(height: 40),
              Text(
                "Looking for 100% Pure Haitian Castor Oil in bulk? Contact us directly for pricing and availability.\n Call (856)701-9872 for inquries.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w100),
              ),
        ],
      ),
    );
  }
}
