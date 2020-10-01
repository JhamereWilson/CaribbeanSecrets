import 'package:flutter/material.dart';

class ModelPhotosMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 87.5,
              width: 175,
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
                  height: 87.5,
                  width: 87.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('/images/CSwebsite-3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 87.5,
                  width: 87.5,
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
          height: 175,
          width: 125,
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
