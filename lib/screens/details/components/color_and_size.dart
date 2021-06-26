//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/models/Product.dart';


import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Expanded(
          //child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            //children: [
              //Text(
               // "Quantity",
                //style: Theme.of(context)
                 //   .textTheme
                   // .bodyText1
                    //.copyWith(fontWeight: FontWeight.bold, fontSize: 22),
              //),
              //CartCounter(),

           // ],
          //),
        //),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: "Size\n", style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            TextSpan(
                text: "${products.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold, ))
          ])),
        )
      ],
    );
  }
}

class ColoredDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColoredDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}



