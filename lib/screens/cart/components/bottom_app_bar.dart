//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/screens/checkout/checkout_screen.dart';
import 'package:shop_x/screens/home/size_config.dart';


// ignore: must_be_immutable
class PushToCart extends StatelessWidget {
  const PushToCart({
    Key key,
    // this.products,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    //textColor: Colors.red, // foreground
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CheckoutScreen()));
                    },
                    child: Text('Check Out', style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20, color: Colors.red),),
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
