import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(food.imagePath, height: 110),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color:
                                Theme.of(context).colorScheme.inverseSurface),
                      ),
                      SizedBox(height: 3),
                      Text(
                        food.description,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      SizedBox(height: 15),
                      Text(
                        food.price.toString() + '\₽',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color:
                            Theme.of(context).colorScheme.inverseSurface),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          //endIndent: 25,
          //indent: 25,
        )
      ],
    );
  }
}
