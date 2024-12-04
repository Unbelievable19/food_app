import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Локация"),
              content: TextField(
                controller: textController,
                decoration: const InputDecoration(
                    hintText: "Ваш адрес",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Назад",
                      style: TextStyle(color: Colors.black),
                    )),
                MaterialButton(
                  onPressed: () {
                    String newAddress = textController.text;
                    context.read<Restaurant>().updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child:
                      Text("Сохранить", style: TextStyle(color: Colors.black)),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Адрес доставки",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                      restaurant.deliveryAddress,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold)),
                ),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
