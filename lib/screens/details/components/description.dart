//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        products.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
