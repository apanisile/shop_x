//@dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/checkout/components/confirmation_page_model.dart';
//import '../../../constants.dart';
//import 'cart_counter.dart';

class CounterWIthFavBtn extends StatefulWidget {
  final Product products;

  final Product cartList;
  const CounterWIthFavBtn({
    Key key,
    Product product,
    this.products,
    this.cartList,
  }) : super(key: key);

  @override
  _CounterWIthFavBtnState createState() => _CounterWIthFavBtnState();
}

//Add to Cart button
class _CounterWIthFavBtnState extends State<CounterWIthFavBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //CartCounter(),
        Expanded(
          child: ElegantNumberButton(
            initialValue: widget.products.numOfItems,
            buttonSizeHeight: 30,
            buttonSizeWidth: 30,
            minValue: 1,
            maxValue: 20,
            onChanged: (value) async {
              setState(() {
                return widget.products.numOfItems = value;
              });
            },
            decimalPlaces: 0,
            color: widget.products.color,
          ),
        ),
        Expanded(
          child: Container(
            //margin: EdgeInsets.only(left: kDefaultPaddin),
            //margin: EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: widget.products.color)),
            child: IconButton(
              onPressed: () {
                if (cartList.contains(widget.products)) {
                  // ignore: unnecessary_statements
                  Intent.doNothing;
                } else
                  setState(() {
                    cartList.add(widget.products);
                  });
              },
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: widget.products.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
