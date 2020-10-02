// import 'package:caribbean_secrets_ecommerce/models/cart_item_model.dart';
// import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_builder/responsive_builder.dart';


//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);

//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         // Check the sizing information here and return your UI
//         if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
//           return ClipRRect(
//             borderRadius: BorderRadius.circular(5.0),
//             child: Container(
//               margin: EdgeInsets.all(8),
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.white,
//                       style: BorderStyle.solid,
//                       width: 0.5),
//                   color: Colors.black,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(0.0, 1.0), //(x,y)
//                       blurRadius: 6.0,
//                     )
//                   ]),
//               height: 250,
//               child: Center(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: 200,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage(imageUrl), fit: BoxFit.cover),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w200),
//                         ),
//                         Text(
//                           "12.0 oz",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w100),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             IconButton(
//                                 icon: Icon(
//                                   Icons.remove,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                                 onPressed: () {
//                                   cart.removeSingleItem(productId);
//                                 }),
//                             Text(
//                               quantity.toString(),
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w100,
//                                   fontSize: 24),
//                             ),
//                             IconButton(
//                                 icon: Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                                 onPressed: () {
//                                   cart.increaseSingleItem(productId);
//                                 })
//                           ],
//                         ),
//                         SizedBox(height: 10),
//                         FlatButton(
//                           onPressed: () {
//                             cart.removeItem(productId);
//                           },
//                           child: Text(
//                             "Delete",
//                             style: TextStyle(
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w100,
//                                 fontSize: 10),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       '\$${(price * quantity)}',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
// //---------------------------Mobile---------------------------------------------------
//         if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
//           return ClipRRect(
//             borderRadius: BorderRadius.circular(5.0),
//             child: Container(
//               margin: EdgeInsets.all(8),
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.white,
//                       style: BorderStyle.solid,
//                       width: 0.5),
//                   color: Colors.black,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(0.0, 1.0), //(x,y)
//                       blurRadius: 6.0,
//                     )
//                   ]),
//               height: 150,
//               child: Center(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: 75,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage(imageUrl), fit: BoxFit.cover),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w200),
//                         ),
//                         Text(
//                           "12.0 oz",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w100),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             IconButton(
//                                 icon: Icon(
//                                   Icons.remove,
//                                   color: Colors.white,
//                                   size: 16,
//                                 ),
//                                 onPressed: () {
//                                   cart.removeSingleItem(productId);
//                                 }),
//                             Text(
//                               quantity.toString(),
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w100,
//                                   fontSize: 16),
//                             ),
//                             IconButton(
//                                 icon: Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                   size: 16,
//                                 ),
//                                 onPressed: () {
//                                   cart.increaseSingleItem(productId);
//                                 })
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         FlatButton(
//                           onPressed: () {
//                             cart.removeItem(productId);
//                           },
//                           child: Text(
//                             "Delete",
//                             style: TextStyle(
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w100,
//                                 fontSize: 10),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                     ),
//                     Text(
//                       '\$${(price * quantity)}',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
