import 'package:get/get.dart';
import 'package:getx_shop/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }

  int get cartCount {
    return cartItems.length;
  }
}
