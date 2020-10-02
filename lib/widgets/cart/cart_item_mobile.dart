import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemMobile extends StatelessWidget {
  final String id;
  final int productId;
  final double price;
  final int quantity;
  final String title;
  final String imageUrl;

  CartItemMobile({
    @required this.id,
    @required this.productId,
    @required this.price,
    @required this.quantity,
    @required this.title,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, style: BorderStyle.solid, width: 0.5),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              )
            ]),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 5),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 12,
                          ),
                          onPressed: () {
                            cart.removeSingleItem(productId);
                          }),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 12,
                          ),
                          onPressed: () {
                            cart.increaseSingleItem(productId);
                          })
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Center(
                    child: Text(
                      '\$${(price * quantity)}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
