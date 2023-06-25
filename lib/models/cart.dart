import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoesList = [
    Shoe(
      'Zoom Freak',
      '236',
      'https://th.bing.com/th/id/OIP.t4Wy69zbeBF2XgH3vX5smAHaHa?pid=ImgDet&w=800&h=800&rs=1',
      'The foward-thinking design of this latest signature shoe.',
    ),
    Shoe(
      'Air Jordans',
      '220',
      'https://th.bing.com/th/id/R.036aeed8140373459c9cf96ecb690927?rik=N%2fNXoFs7DQY47Q&pid=ImgRaw&r=0',
      'You have got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
    Shoe(
      'KD Treys',
      '240',
      'https://th.bing.com/th/id/R.49f393cc31615a5c3919e15fd7372d0e?rik=rFNFW97jqOkjBQ&pid=ImgRaw&r=0',
      'A secure midfoot strap is suited for scoring binges and defensive.',
    ),
    Shoe(
      'Kyrie 6',
      '190',
      'https://th.bing.com/th/id/OIP.gPJ3hwGYQI_tI_PcU3gD5AAAAA?pid=ImgDet&rs=1',
      'Bouncy cushioning is paired with soft yet supportive foam for.',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> get getShoesList => shoesList;

  List<Shoe> get getUserCart => userCart;

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
