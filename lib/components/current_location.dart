import 'package:flutter/material.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Локация"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Ваш адрес", hintStyle: TextStyle(color: Colors.grey)),
              ),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Назад", style: TextStyle(color: Colors.black),)),

                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Сохранить", style: TextStyle(color: Colors.black)),
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
                Text("Комсомольская 196а",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
