import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app/components/custom_button.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Ваш заказ",
              //   style: TextStyle(
              //       color: Theme.of(context).colorScheme.inversePrimary),
              // ),
              //SizedBox(height: 25),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        //borderRadius: BorderRadius.circular(8)
                      ),
                      padding: const EdgeInsets.all(25),
                      child: Consumer<Restaurant>(
                          builder: (context, restaurant, child) => Text(
                                restaurant.displayCartReceipt(),
                              )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              // CustomButton(
              //   text: "Выход",
              //   //onTap: exit(0),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
