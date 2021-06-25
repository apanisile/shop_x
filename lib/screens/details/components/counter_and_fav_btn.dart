//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/cart/components/CartModel.dart';
import '../../../constants.dart';
import 'cart_counter.dart';

class CounterWIthFavBtn extends StatelessWidget {
  const CounterWIthFavBtn({
    Key key,
    Product product,
    this.products,
  }) : super(key: key);


  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: kDefaultPaddin),
            //margin: EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: products.color)),
            child: IconButton(
                onPressed: () {
                  cartList.add(products);
                },
                icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg",
                  color: products.color,
                )),
          ),
        ),
      ],
    );
  }
}
