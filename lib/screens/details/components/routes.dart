//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/screens/cart/cart_screen.dart';
import 'package:shop_x/screens/checkout/checkout_screen.dart';


final Map<String, WidgetBuilder> routes = {

  CheckoutScreen.routeName: (context) => CheckoutScreen(),
  cartScreen.routeName:(context) => cartScreen() ,
};
