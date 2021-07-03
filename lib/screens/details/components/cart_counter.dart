//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_x/models/Product.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  CartCounter(int index);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  final Product products;
  final Product cartList;

  _CartCounterState({
    this.products,
    this.cartList,
  });
  var _numOfItems = 1;

  //get index => null;
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
                    //cartList[index].numOfItems-1;
                  });
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
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
                  //cartList.numOfItems+1;
                });
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      // ignore: deprecated_member_use
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Center(child: Icon(icon)),
      ),
    );
  }
}
