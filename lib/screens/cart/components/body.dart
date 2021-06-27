//@dart=2.9
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  //final Product products;
  //Body({Key key, this.products}) : super(key: key);

  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
           //child: PushToCart()
        )
      ],
    );
  }
}
