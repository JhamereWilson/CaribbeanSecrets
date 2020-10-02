import 'package:caribbean_secrets_ecommerce/models/cart_item_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CartItemDesktop extends StatelessWidget {
  final String id;
  final int productId;
  final double price;
  final int quantity;
  final String title;
  final String imageUrl;

  CartItemDesktop({
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
        height: 250,
        margin: EdgeInsets.all(8),
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
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 200,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {
                            cart.removeSingleItem(productId);
                          }),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 24),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {
                            cart.increaseSingleItem(productId);
                          })
                    ],
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: () {
                      cart.removeItem(productId);
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w100,
                          fontSize: 10),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '\$${(price * quantity)}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
