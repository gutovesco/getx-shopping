import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shop/controllers/shopping_controller.dart';

class ShoppingPage extends GetView<ShoppingController> {
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
                  margin: EdgeInsets.all(20),
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
                    trailing: Text(
                      "R\$ ${controller.products[index].price}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.greenAccent),
                    ),
                  ),
                );
              },
            );
          }),
        ),
        const Text("Total amount: "),
        const SizedBox(height: 50),
      ],
    ));
  }
}
