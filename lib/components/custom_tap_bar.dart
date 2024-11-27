import 'package:flutter/material.dart';

import '../models/food.dart';

extension FoodCategoryToRussianExt on FoodCategory {
  String get russian {
    switch (this) {
      case FoodCategory.rolls:
        return 'Роллы';
      case FoodCategory.pizza:
        return 'Пицца';
      case FoodCategory.wok:
        return 'Вок';
      case FoodCategory.snacks:
        return 'Закуски';
      case FoodCategory.drinks:
        return 'Напитки';
    }
  }
}

class CustomTapBar extends StatelessWidget {
  final TabController tabController;

  const CustomTapBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.russian.toString().split('.').last,
      );
    }).toList();
  }

  Map<FoodCategory, String> foodCategoryToRussian(FoodCategory category) {
    return {
      FoodCategory.rolls: 'роллы',
      FoodCategory.pizza: 'пицца',
      FoodCategory.wok: 'вок',
      FoodCategory.snacks: 'закуски',
      FoodCategory.drinks: 'напитки',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TabBar(
      //padding: EdgeInsets.zero,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      //indicatorPadding: EdgeInsets.zero,

      //indicatorColor: Colors.green,
      //indicator:
      //  UnderlineTabIndicator(borderSide: BorderSide(color: Colors.red)),
      //Theme.of(context).colorScheme.secondary

      labelColor: Theme.of(context).colorScheme.inversePrimary,
      unselectedLabelColor: Theme.of(context).colorScheme.primary,
      controller: tabController,
      tabs: _buildCategoryTabs(),
    ));
  }
}
