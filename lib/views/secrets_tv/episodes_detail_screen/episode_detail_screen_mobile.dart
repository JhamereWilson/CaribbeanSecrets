import 'dart:html';

import 'package:caribbean_secrets_ecommerce/providers/episodes.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episode_player_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';

import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EpisodeDetailScreenMobile extends StatelessWidget {
  EpisodeDetailScreenMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    final episodeId = ModalRoute.of(context).settings.arguments as int;
    final loadedEpisode = Provider.of<Episodes>(
      context,
      listen: false,
    ).findById(episodeId);
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.black,
      endDrawerEnableOpenDragGesture: false,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      key: scaffoldKey,
      endDrawer: CartScreenMobile(),
      body: Column(children: [
        NavigationBarMobile(scaffKey: scaffoldKey,),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 100,
                width: 300,
                child: Center(
                    child: Text(
                  loadedEpisode.title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                )),
              ),
              SizedBox(height: 20),
              EpisodePlayerView(
                height: 300,
                width: 300,
                url: loadedEpisode.videoUrl,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
