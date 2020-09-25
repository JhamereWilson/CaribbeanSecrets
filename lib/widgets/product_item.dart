import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;

  const ProductItem({this.id, this.title, this.price, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 20),
          Text(
            price.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900),
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
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
