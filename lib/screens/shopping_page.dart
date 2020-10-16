import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shop/controllers/cart_controller.dart';
import 'package:getx_shop/controllers/shopping_controller.dart';

class ShoppingPage extends GetView<ShoppingController> {
  final _cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: GetX<ShoppingController>(builder: (controller) {
            return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                return Card(
                  semanticContainer: true,
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "${controller.products[index].productImage}")),
                    title: Text(
                      "${controller.products[index].productName}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      "${controller.products[index].productDescription}",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "R\$ ${controller.products[index].price}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.greenAccent),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            height: 25,
                            width: 100,
                            child: RaisedButton(
                              onPressed: () {
                                _cartController
                                    .addToCart(controller.products[index]);
                              },
                              color: Colors.lightBlue[300],
                              child: Center(
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),
        GetX<CartController>(builder: (controller) {
          return Text("Total amount: R\$ ${controller.totalPrice}");
        }),
        GetX<CartController>(builder: (controller) {
          return Text("Cart Items: ${controller.cartCount}");
        }),
        const SizedBox(height: 50),
      ],
    ));
  }
}
