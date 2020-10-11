import 'package:caribbean_secrets_ecommerce/providers/episodes.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'episodes_item_view.dart';

class SecretsTVScreenMobile extends StatelessWidget {
  SecretsTVScreenMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final episodesData = Provider.of<Episodes>(context);
    final episodes = episodesData.episodes;
    final screen = ScreenDimensions(context);
    return Scaffold(
      backgroundColor: Colors.black,
      endDrawerEnableOpenDragGesture: false,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      endDrawer: CartScreenMobile(),
      key: scaffoldKey,
      body: Column(
        children: [
          NavigationBarMobile(
            scaffKey: scaffoldKey,
          ),
          Expanded(
            child: ListView(
              children: [
                NavigationRow(currentPage: "Secrets TV"),
                Divider(
                  height: 1,
                  color: Colors.white,
                  thickness: 0.5,
                ),
                SizedBox(height: screen.screenHeight * 0.05),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Season One",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(height: screen.screenHeight * 0.05),
                Container(
                  height: screen.screenHeight * 0.8,
                  width: screen.screenWidth,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: episodes.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: episodes[i],
                      child: EpisodeItem(),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
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
