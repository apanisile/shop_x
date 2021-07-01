//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_x/models/Product.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final Product products;
  const Body({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.07,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                    ],
                  ),
                ),
                //ImageAndText(),
                Expanded(
                  child: Hero(
                    
                    tag: "${products.id}",
                    child: Image.asset(
                      products.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //ProductTitleWithImage(products: widget.products)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    Key key,
    @required this.widget,
    @required this.products,
    //List<Product> products,
  }) : super(key: key);

  final Body widget;
  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: "${products.id}",
              child: Image.asset(
                widget.products.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
