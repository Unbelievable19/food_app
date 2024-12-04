import 'package:flutter/material.dart';
import 'package:food_app/components/receipt.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/services/database/firestore.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    String receiptdb = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receiptdb);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Оформление заказа"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Receipt(),
    );
  }
}
