import 'dart:html';
import 'dart:ui';

import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class NavigationDrawer extends StatelessWidget {
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
                onTap: () {},
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
            title: Text("Blog",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () => Navigator.of(context).pushNamed(BlogRoute),
          ),
          ListTile(
            title: Text("Our Story",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () => Navigator.of(context).pushNamed(AboutRoute),
          ),
        ],
      ),
    );
  }
}
