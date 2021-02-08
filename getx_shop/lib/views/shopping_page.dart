import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_shop/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card();
                    });
              }),
            ),
            Text('Total amount: '),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
