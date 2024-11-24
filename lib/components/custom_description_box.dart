import 'package:flutter/material.dart';

class CustomDescriptionBox extends StatelessWidget {
  const CustomDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var customPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var customSecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(50)
        ),
        padding: const EdgeInsets.all(25),
        //padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Цена доставки", style: customSecondaryTextStyle),
                Text("99₽", style: customPrimaryTextStyle),
              ],
            ),
            Column(
              children: [
                Text("Время доставки", style: customSecondaryTextStyle),
                Text("30-60м", style: customPrimaryTextStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
