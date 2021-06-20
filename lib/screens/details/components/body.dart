//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/details/components/add_to_cart.dart';
import 'package:shop_x/screens/details/components/cart_counter.dart';
import 'color_and_size.dart';
import 'counter_and_fav_btn.dart';
import 'description.dart';
import 'product_with_title_image.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final Product products;

  const Body({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(products: products),
                      SizedBox(height: kDefaultPaddin/2),
                      Description(products: products),
                      SizedBox(height: kDefaultPaddin/2),
                      CounterWIthFavBtn(),
                      SizedBox(height: kDefaultPaddin/2),
                      AddToCart(products: products)
                    ],
                  ),
                ),
                ProductTitleWithImage(products: products)
              ],
            ),
          )
        ],
      ),
    );
  }
}
