//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/screens/cart/components/bottom_app_bar.dart';
import 'package:shop_x/screens/cart/components/body.dart';
import 'package:shop_x/screens/home/size_config.dart';


// ignore: camel_case_types
class cartScreen extends StatefulWidget {
  static var routeName = "/cart";
  cartScreen({Key key}) : super(key: key);

  @override
  _cartScreenState createState() => _cartScreenState();
}

// ignore: camel_case_types
class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: PushToCart(),
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
