//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/models/Product.dart';

import 'package:shop_x/screens/cart/components/body.dart';

// ignore: camel_case_types
class cartScreen extends StatelessWidget {
  static var routeName = "/cart";
  const cartScreen({Key key, this.products}) : super(key: key);
  final Product products;

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(products: products,),
      //bottomNavigationBar: PushToCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}
