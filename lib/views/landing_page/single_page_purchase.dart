import 'dart:ui';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/animated_text.dart';

import 'package:caribbean_secrets_ecommerce/views/logo_view/logo_view.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_page.dart';

import 'package:flutter/material.dart';

class SinglePurchaseLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenDimensions(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: screen.screenHeight,
                width: screen.screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/images/CSwebsite-9.jpg'),
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text("SHOP",
              //           style: TextStyle(
              //               fontSize: 12,
              //               fontWeight: FontWeight.w100,
              //               color: Colors.white)),
              //       LogoView(height: 75, width: 150),
              //       Text(
              //         "MENU",
              //         style: TextStyle(
              //             fontSize: 12,
              //             fontWeight: FontWeight.w100,
              //             color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),

              Positioned(
                top: 100,
                right: 1,
                child: AnimatedText(),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: LogoView(height: 300, width: 600)),
          SizedBox(
            height: 30,
          ),
          Row(
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
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 3,
                width: 100,
                color: Colors.white70,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Our Products",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 72,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 3,
                width: 100,
                color: Colors.white70,
              ),
            ],
          ),
          ProductDetail(),
          Stack(
            children: [
              Container(
                width: screen.screenWidth,
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/images/secret_hands.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 350,
                  width: screen.screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Subscribe To Unlock The Secret Collection!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.white54,
                            fontWeight: FontWeight.w100),
                      ),
                      Container(
                        height: 1,
                        width: 1400,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),

          Container(
            width: 600,
            height: 600,
            child: Image(image: AssetImage('/images/CSwebsite-20.jpg'),),
            ),
          
          // Container(
          //   // padding: EdgeInsets.all(10),
          //   height: 800,
          //   child: Row(
          //     children: [
          //       Expanded(
          //         flex: 4,
          //         child: Container(
          //           width: screen.screenWidth,
          //           height: 600,
          //           child: Center(child: Image.asset('images/blur_big.jpg')),
          //         ),
          //       ),
          //       Expanded(
          //         flex: 4,
          //         child: Container(
          //           width: screen.screenWidth,
          //           height: 400,
          //           child: Center(
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   'Subscribe Below to \nUnlock The Secret Collection!',
          //                   style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 36,
          //                       fontWeight: FontWeight.w600),
          //                 ),
          //                 SizedBox(height: 50),
          //                 Text(
          //                   "Email",
          //                   style: TextStyle(
          //                       color: Colors.white70,
          //                       fontSize: 36,
          //                       fontWeight: FontWeight.w100),
          //                 ),
          //                 SizedBox(height: 5,),
          //                 Container(
          //                   height: 1,
          //                   width: 600,
          //                   color: Colors.white,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            width: screen.screenWidth,
          ),
          // Stack(
          //   children: [
          //     Container(
          //       width: screen.screenWidth,
          //       height: 800,
          //       child: Row(
          //         children: [
          //           Container(
          //             width: screen.screenWidth / 2,
          //             height: 600,
          //             child: VideoPlayerView(),
          //           ),
          //           Container(
          //             color: Colors.white,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
