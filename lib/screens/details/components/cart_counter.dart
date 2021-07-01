//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_x/models/Product.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  final Product products;

  _CartCounterState({this.products});
  var _numOfItems = 0;
  void add(Product products) {
    //return products.numOfItems + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (_numOfItems >= 1) {
                setState(() {
                  _numOfItems--;
                  setState(() {
                    products.numOfItems--;
                  });
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            _numOfItems.toString().padLeft(2, "0"),
            //index.toString().padLeft(2, "0"),
            // "${products.numOfItems}",

            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                _numOfItems++;
                setState(() {
                  products.numOfItems--;
                });
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 20,
      height: 20,
      // ignore: deprecated_member_use
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Center(child: Icon(icon)),
      ),
    );
  }
}
