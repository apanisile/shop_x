//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_x/constants.dart';
import 'package:shop_x/screens/cart/components/CartModel.dart';
import 'package:shop_x/screens/home/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  //final Product products;
  //const Body({Key key, this.products}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.0)),
      child: ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(

            key: Key(cartList[index].id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              decoration: BoxDecoration(
                  color: Color(0xFFFFE6e6),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/icons/trash.svg')
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                cartList.removeAt(index);
              });
            },
            child: CartItemCard(cartList: cartList[index]),
          ),
        ),
      ),
    );
  }
}
