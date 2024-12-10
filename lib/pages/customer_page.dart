import 'package:flutter/material.dart';
import 'package:food_app/components/current_location.dart';
import 'package:food_app/components/custom_button.dart';
import 'package:food_app/pages/order_page.dart';

import '../components/phone_number.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});
  ///сделать ввод через TextFormField, чтобы потом через if/else
  ///активировать кнопку при заполнение полей ввода
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Оформление заказа"),
      ),
      body: Column(
        children: [
          PhoneNumber(),
          CurrentLocation(),
          CustomButton(
            text: "Оформить заказ",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OrderPage())),
          )
        ],
      ),
    );
  }
}
