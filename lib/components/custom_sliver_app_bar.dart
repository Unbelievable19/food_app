import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const CustomSliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //automaticallyImplyLeading: false,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      title: Text('Sea Food Bar', style: TextStyle(fontWeight: FontWeight.bold),),
      //title: Image.asset("assets/logos/seafoodlogo.png", width: 100,),
      centerTitle: true,
      //backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        //titlePadding: const EdgeInsets.all(0),
        titlePadding:
            const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 10),
        expandedTitleScale: 1,
      ),
    );
  }
}
