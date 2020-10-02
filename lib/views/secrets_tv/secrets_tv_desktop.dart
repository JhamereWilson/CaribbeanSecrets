import 'package:caribbean_secrets_ecommerce/providers/episodes.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'episodes_item_view.dart';

class SecretsTVScreenDesktop extends StatelessWidget {
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
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    text: TextSpan(
                        text: "Secrets",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w100),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' TV',
                              style: TextStyle(
                                  color: Colors.red[700],
                                  fontSize: 48,
                                  fontWeight: FontWeight.w900))
                        ]),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Season One",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  height: 800,
                  width: 1000,
                  child: GridView.builder(
                    itemCount: episodes.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: episodes[i],
                      child: EpisodeItem(),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisCount: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
