import 'package:flutter/material.dart';

class ModelPhotosDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 350,
              width: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('/images/CSwebsite-10.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('/images/CSwebsite-3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('/images/CSwebsite-28.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(2),
          height: 700,
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/images/CSwebsite-16.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
