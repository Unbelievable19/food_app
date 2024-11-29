import 'package:flutter/material.dart';
import 'package:food_app/components/custom_quantity_selector.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CustomCartTile extends StatelessWidget {
  final CartItem cartItem;

  const CustomCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(cartItem.food.imagePath,
                                width: 100)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(cartItem.food.name,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary)),
                              SizedBox(height: 6),
                              Text(
                                cartItem.food.price.toString() + "\₽",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary),
                              ),
                            ],
                          ),
                        ),
                        //const Spacer(),
                        QuantitySelector(
                          quantity: cartItem.quantity,
                          food: cartItem.food,
                          onDecrement: () =>
                              restaurant.removeFromCart(cartItem),
                          onIncrement: () => restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddons),
                        ),
                        //SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: cartItem.selectedAddons
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      Text(addon.name),
                                      Text(" (${addon.price}\₽)"),
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                  onSelected: (value) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 12,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
