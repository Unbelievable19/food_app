import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController textNumberController = TextEditingController();

  void openNumberSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Номер телефона"),
          content: TextField(
            controller: textNumberController,
            decoration: const InputDecoration(
                hintText: "Введите номер телефона",
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
                String newPhoneNumber = textNumberController.text;
                context.read<Restaurant>().updatePhoneNumber(newPhoneNumber);
                Navigator.pop(context);
                textNumberController.clear();
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
          Text("Номер телефона",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          GestureDetector(
            onTap: () => openNumberSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                      restaurant.deliveryNumber,
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
