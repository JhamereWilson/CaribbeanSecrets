// import 'dart:ui';

// import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
// import 'package:caribbean_secrets_ecommerce/screens/cart_screens/cart_view.dart';
// import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
// import 'package:caribbean_secrets_ecommerce/views/animated_text.dart';
// import 'package:caribbean_secrets_ecommerce/views/hero_view/hero_view_desktop.dart';

// import 'package:caribbean_secrets_ecommerce/views/landing_page/subscribe_field.dart';

// import 'package:caribbean_secrets_ecommerce/views/logo_view/logo_view.dart';

// import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
// import 'package:caribbean_secrets_ecommerce/widgets/products/products_list.dart';

// import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// bool subscribed = false;

// class SinglePurchaseLandingPage extends StatefulWidget {
//   @override
//   _SinglePurchaseLandingPageState createState() =>
//       _SinglePurchaseLandingPageState();
// }

// class _SinglePurchaseLandingPageState extends State<SinglePurchaseLandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     ScrollController _scrollController = ScrollController();
//     var screen = ScreenDimensions(context);

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         elevation: 2.0,
//         onPressed: () {
//           // Navigator.of(context).pushNamed(CartScreen.routeName);
//         },
//         backgroundColor: Colors.transparent,
//         focusColor: Colors.transparent,
//         foregroundColor: Colors.transparent,
//         hoverColor: Colors.black,
//         splashColor: Colors.black,
//         child: Consumer<Cart>(
//           builder: (_, cartData, ch) => Badge(
//             //ch is passed into the consumer where the child is defined
//             value: cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
//             child: ch,
//           ),
//           child: Icon(Icons.shopping_cart, color: Colors.white, size: 42),
//         ),
//       ),

//       backgroundColor: Colors.black,
//       // body: DraggableScrollbar.semicircle(
//       //   controller: _scrollController,
//       //   heightScrollThumb: 30,
//       //   backgroundColor: Colors.white.withOpacity(0.7),
//       body: // import the package

// // Use the widget
//           ResponsiveBuilder(
//         builder: (context, sizingInformation) {
//           // Check the sizing information here and return your UI
//           if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
//             return Column(
//               children: [
//                 NavigationBar(),
//                 Expanded(
//                   child: ListView(
//                     controller: _scrollController,
//                     children: [
//                   HeroViewDesktop(),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       //------------------LOGO VIEW ---------------------
                      
//                       SizedBox(
//                         height: 30,
//                       ),

//                       //-----------------CS MODEL PHOTOS -----
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.all(2),
//                                 height: 350,
//                                 width: 700,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image:
//                                         AssetImage('/images/CSwebsite-10.jpg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.all(2),
//                                     height: 350,
//                                     width: 350,
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             '/images/CSwebsite-3.jpg'),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.all(2),
//                                     height: 350,
//                                     width: 350,
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             '/images/CSwebsite-28.jpg'),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             height: 700,
//                             width: 500,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('/images/CSwebsite-16.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 100,
//                       ),
//                       //--------------------PRODUCTS SECTION------------------------------------
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 3,
//                             width: 100,
//                             color: Colors.white70,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "Our Products",
//                             style: TextStyle(
//                                 color: Colors.white70,
//                                 fontSize: 72,
//                                 fontWeight: FontWeight.w900),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 3,
//                             width: 100,
//                             color: Colors.white70,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 60),
//                       // ------ CASTOR OILS
//                       Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           "All Natural Haitian Castor Oils",
//                           style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 48,
//                               fontWeight: FontWeight.w100),
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Container(
//                           height: 500, child: Center(child: ProductsList())),
//                       SizedBox(height: 100),

//                       // -- SECRET COLLECTION/SUBSCRIPTION VIEW
//                       SecretCollectionView(),
//                       SizedBox(height: 50),

//                       // -------------- BROTHERS VIDEO ------------------
//                       Container(
//                         width: 600,
//                         height: 600,
//                         child: Image(
//                           image: AssetImage('/images/CSwebsite-20.jpg'),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 400,
//                         width: screen.screenWidth,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           }

//           if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            
//           }
//         },
//       ),
//     );
//   }
// }

// class SubscriptionView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var screen = ScreenDimensions(context);
//     return Stack(
//       children: [
//         Container(
//           width: screen.screenWidth,
//           height: 450,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('/images/secret_hands.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
//             child: Container(
//               color: Colors.black.withOpacity(0.2),
//             ),
//           ),
//         ),
//         Center(
//           child: Container(
//             height: 400,
//             width: screen.screenWidth,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   "Subscribe To Unlock The Secret Collection!",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 72,
//                       fontWeight: FontWeight.w900),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 SubscribeField(subscribeStatusChanged: () {
//                   subscribed = true;
//                 }),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SecretCollectionView extends StatefulWidget {
//   @override
//   _SecretCollectionViewState createState() => _SecretCollectionViewState();
// }

// class _SecretCollectionViewState extends State<SecretCollectionView> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         subscribed = true;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//         child: subscribed ? SecretCollectionPurchaseView() : SubscriptionView(),
//         duration: Duration(seconds: 2));
//   }
// }

// class SecretCollectionPurchaseView extends StatefulWidget {
//   @override
//   _SecretCollectionPurchaseViewState createState() =>
//       _SecretCollectionPurchaseViewState();
// }

// class _SecretCollectionPurchaseViewState
//     extends State<SecretCollectionPurchaseView> {
//   bool glowing = false;
//   @override
//   Widget build(BuildContext context) {
//     var screen = ScreenDimensions(context);
//     return Container(
//       width: screen.screenWidth,
//       height: 450,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('/images/secret_hands.jpg'),
//           fit: BoxFit.fitWidth,
//         ),
//       ),
//       child: Center(
//         child: GlowingText(),
//       ),
//     );
//   }
// }
