import 'package:get/get.dart';
import 'package:getx_shop/models/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var response = [
      Product(
          id: 1,
          price: 30,
          productDescription: "some description about the product",
          productImage:
              "https://pm1.narvii.com/6281/9c8414e52e1282034b1eb7bd1268494f6d18d6e3_00.jpg",
          productName: "First product"),
      Product(
          id: 2,
          price: 40,
          productDescription: "this is the second product",
          productImage:
              "https://pm1.narvii.com/6281/9c8414e52e1282034b1eb7bd1268494f6d18d6e3_00.jpg",
          productName: "second product")
    ];

    products.value = response;
  }
}
