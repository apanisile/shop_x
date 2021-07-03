//@dart=2.9

import 'package:shop_x/models/Product.dart';

class Cart extends Product{
  int numOfItems;

  Cart({id,image,title,description,price,size,color, this.numOfItems}):
      super(id:id,image:image,title:title,description:description,price:price,size:size,color:color,);

}

List cartList = [];



int get totalPrice {
  return cartList.fold(
      0, (total, current) => (total + current.price) * current.numOfItems);
}
