// import 'package:flutter/material.dart';

// class EpisodeItem extends StatelessWidget {
//   final int id;
//   final String title;
//   final String description;
//   final String videoUrl;
//   const EpisodeItem({Key key, this.id, this.title, this.description, this.videoUrl}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       elevation: 2,
//       child: SizedBox(
//         width: 360,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 180,
//               // child: Image.asset(model.imageUrl, fit: BoxFit.cover,),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 15.0,
//                 vertical: 20,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white,
//                       fontSize: 14,
//                     ),
//                     softWrap: true,
//                   ),
//                   Text(
//                     description,
//                     style: TextStyle(fontSize: 10, color: Colors.white),
                    
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
    
//   }
//   }
// }