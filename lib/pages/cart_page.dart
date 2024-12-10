import 'package:flutter/material.dart';
import 'package:food_app/components/custom_button.dart';
import 'package:food_app/components/custom_cart_tile.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/pages/customer_page.dart';
import 'package:provider/provider.dart';

import 'order_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          title: const Text("Корзина"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            "Вы действительно хотите удалить все товары из корзины?",
                            style: TextStyle(fontSize: 20),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Назад",
                                  style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: const Text("Да",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ));
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(
                          child: Center(
                              child: Text(
                          "Корзина пуста...",
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        )))
                      : Expanded(
                          child: ListView.builder(
                          itemCount: userCart.length,
                          itemBuilder: (context, index) {
                            final cartItem = userCart[index];

                            return CustomCartTile(cartItem: cartItem);
                          },
                        ))
                ],
              ),
            ),
            userCart.isNotEmpty ? Divider(
                color: Theme.of(context).colorScheme.tertiary,
                height: 1,
                thickness: 2) : Text(""),
            userCart.isNotEmpty
                ? Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25,top: 25),
                  child: Row(
                      children: [
                        Text("Итог:", style: TextStyle(
                            color:
                            Theme.of(context).colorScheme.inversePrimary, fontSize: 20, fontWeight: FontWeight.bold)),
                        Spacer(),
                        Consumer<Restaurant>(
                          builder: (context, restaurant, child) => Text(
                            "${restaurant.getTotalPrice().toString()}Р",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.inversePrimary, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                )
                : Text(""),
            Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: userCart.isNotEmpty
                    ? CustomButton(
                        text: "Оформить заказ",
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CustomerPage())),
                      )
                    : null),
          ],
        ),
      );
    });
  }
}
