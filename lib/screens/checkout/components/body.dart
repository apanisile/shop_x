//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_x/constants.dart';
import 'package:shop_x/screens/checkout/components/confirmation_page_model.dart';
import 'package:shop_x/screens/home/size_config.dart';

import 'confirmation_page_model.dart';

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20.0),
        ),
        child: ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Dismissible(
              key: Key(
                cartList[index].id.toString(),
              ),
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
              child: Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(90.0),
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F6F9),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(cartList[index].image),
                      ),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartList[index].title,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 20),
                          Text.rich(
                            TextSpan(
                              text: "\$${cartList[index].price}",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text.rich(
                            TextSpan(
                              text:
                                  "Quantity: ${cartList[index].numOfItems.toString()}",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          //SizedBox(
                          //width: 100,
                          //),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //----------------------------------------
            ),
          ),
        ),
      ),
    );
  }
}
