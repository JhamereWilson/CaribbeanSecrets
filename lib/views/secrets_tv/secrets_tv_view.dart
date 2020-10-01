import 'package:caribbean_secrets_ecommerce/providers/episodes.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player2.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player3.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player4.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player5.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretsTVView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final episodesData = Provider.of<Episodes>(context);
    final episodes = episodesData.episodes;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: ListView(
              children: [
                NavigationRow(currentPage: "Secrets TV"),
                Divider(
                  height: 1,
                  color: Colors.white,
                  thickness: 0.5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Text(
                        "Secrets",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "TV ",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 72,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1000,
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    // onSelectedItemChanged: ,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 600,
                              child: VideoPlayer2(),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Episode 1:",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "Welcome to the Family",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Scroll Down For More",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: VideoPlayer3(),
                      ),
                      Container(
                        height: 400,
                        child: VideoPlayer4(),
                      ),
                      Container(
                        height: 400,
                        child: VideoPlayer5(),
                      ),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
