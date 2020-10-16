import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shop/binding/bindings.dart';
import 'package:getx_shop/screens/shopping_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: AllBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ShoppingPage(),
    );
  }
}
