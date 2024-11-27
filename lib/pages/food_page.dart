import 'package:flutter/material.dart';
import 'package:food_app/components/custom_button.dart';

import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(widget.food.name),
          ),
          body: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Image.asset(widget.food.imagePath),
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.food.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inverseSurface),
                          ),
                          Text(
                            widget.food.description,
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            widget.food.price.toString() + '\₽',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inverseSurface),
                          ),
                          //SizedBox(height: 6)
                          //Divider(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Divider(color: Theme.of(context).colorScheme.tertiary, height: 1),
              const SizedBox(height: 6),
              Text(
                "Добавки",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontSize: 16),
              ),
              const SizedBox(height: 6),
              // Divider(
              //     color: Theme.of(context).colorScheme.inversePrimary, height: 1),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(15)),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            checkColor: Colors.green,
                            fillColor: MaterialStateProperty.all(
                                Theme.of(context).colorScheme.tertiary),
                            title: Text(
                              addon.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                            ),
                            subtitle: Text(
                              addon.price.toString() + '\₽',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                            ),
                            value: widget.selectedAddons[addon],
                            //checkColor: Colors.green,
                            //tileColor: Colors.red,
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomButton(
                  text: "Добавить в корзину",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        // SafeArea(
        //     child: Opacity(
        //   opacity: 1,
        //   child: Container(
        //     margin: const EdgeInsets.only(left: 6, top: 6),
        //     // decoration: BoxDecoration(
        //     //     color: Theme.of(context).colorScheme.secondary,
        //     //     shape: BoxShape.circle),
        //     child: IconButton(
        //       icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
        //       onPressed: () => Navigator.pop(context),
        //     ),
        //   ),
        // ))
      ],
    );
  }
}
