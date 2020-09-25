import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String id;
  final String productId;
  final String imageUrl;
  final double price;
  final int quantity;
  final String title;

  const CartItem(
      {this.id,
      this.productId,
      @required this.price,
      @required this.quantity,
      @required this.title,
      @required this.imageUrl});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Center(
        child: Card(
          shadowColor: Colors.white,
          elevation: 1.0,
          color: Colors.transparent,
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageUrl),
                        fit: BoxFit.fitHeight)),
              ),
              title: Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w100),
              ),
              subtitle: Text(
                'Total: \$${(widget.price * widget.quantity)}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300),
              ),
              // trailing: Text(
              //   '$quantity x',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 16,
              //   ),
              // ),
              trailing: DropdownButton(
                iconDisabledColor: Colors.white,
                iconEnabledColor: Colors.white,
                dropdownColor: Colors.black,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 1,
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
