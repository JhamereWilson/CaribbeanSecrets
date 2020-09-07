import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenDimensions(context);
    return Container(
      height: 800,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: screen.screenWidth,
              height: 600,
              child: Center(child: Image.asset('images/CS3Bottles.png')),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: screen.screenWidth,
              height: 400,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'All Natural Haitian Castor Oil',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Oil coming straight from the abundant land of Haiti. Use this thick, rich Haitian Castor Oil to maintain locs, twists and braids and strengthen your hair strands for growth and texture. You will see immediate results! ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Price: \$15.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quanitity:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 0.5,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w100),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.red,
                          Colors.orange,
                          Colors.yellow,
                          Colors.green,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                          Colors.deepPurple
                        ]),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.black,
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
