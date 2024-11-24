import 'package:flutter/material.dart';

import '../models/food.dart';

class CustomTapBar extends StatelessWidget {

  final TabController tabController;

  const CustomTapBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        //indicatorColor: Colors.green,
        //Theme.of(context).colorScheme.secondary
        labelColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedLabelColor: Theme.of(context).colorScheme.primary,
        controller: tabController,
        tabs: _buildCategoryTabs(),

      )
    );
  }
}
