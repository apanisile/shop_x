//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_x/constants.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/home/size_config.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static var routeName = "/cart";

  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: kTextColor),
          ),
          Text(
            "${products.length} Items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(15),
          horizontal: getProportionateScreenWidth(30)),
      //height: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total: \n",
                    children: [
                      TextSpan(
                        text: "\$300.10",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    textColor: Colors.red, // foreground
                    onPressed: () {},
                    child: Text('Check Out'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
