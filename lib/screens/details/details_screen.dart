//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'package:shop_x/models/Product.dart';

import 'package:shop_x/constants.dart';
import 'package:shop_x/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product products;

  const DetailsScreen({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: buildAppBar(context),
      body: Body(products: products),

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: products.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            )),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
