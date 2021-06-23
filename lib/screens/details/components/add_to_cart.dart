//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/cart/cart_screen.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: products.color)),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg",
                  color: products.color,
                )),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: products.color,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
