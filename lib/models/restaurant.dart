import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  ///список позиций в меню
  final List<Food> _menu = [
    //rolls
    Food(
      name: "Филадельфия классик",
      description: "Пиздец какой вкусный ролл",
      imagePath: "assets/images/rolls/1.png",
      price: 259,
      category: FoodCategory.rolls,
      availableAddons: [
        Addon(name: "Соевый соус", price: 30),
      ],
    ),
    Food(
      name: "Дракон",
      description: "Пиздец какой вкусный ролл",
      imagePath: "assets/images/rolls/2.png",
      price: 259,
      category: FoodCategory.rolls,
      availableAddons: [
        Addon(name: "Соевый соус", price: 30),
      ],
    ),
    Food(
      name: "Калифорния с Креветкой",
      description: "Пиздец какой вкусный ролл",
      imagePath: "assets/images/rolls/3.png",
      price: 259,
      category: FoodCategory.rolls,
      availableAddons: [
        Addon(name: "Соевый соус", price: 30),
      ],
    ),
    Food(
      name: "Инь-Янь Ролл",
      description: "Пиздец какой вкусный ролл",
      imagePath: "assets/images/rolls/4.png",
      price: 259,
      category: FoodCategory.rolls,
      availableAddons: [
        Addon(name: "Соевый соус", price: 30),
      ],
    ),

    //pizza
    Food(
      name: "Пицца Диабло (острая)",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/1.png",
      price: 579,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),
    Food(
      name: "Пицца Пеперони",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/2.png",
      price: 529,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),
    Food(
      name: "Пицца Ветчина-Грибы",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/3.png",
      price: 499,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),
    Food(
      name: "Пицца Цыплёнок Барбекю",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/4.png",
      price: 549,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),
    Food(
      name: "Пицца Цыплёнок Ранч",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/5.png",
      price: 549,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),
    Food(
      name: "Пицца Мясная",
      description: "Пиздец какая вкусная пицца",
      imagePath: "assets/images/pizza/6.png",
      price: 629,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Сыр", price: 40),
        Addon(name: "Бекон", price: 50),
        Addon(name: "Куриное филе", price: 50),
        Addon(name: "Халапеньо", price: 30),
        Addon(name: "Соус красный", price: 10),
        Addon(name: "Соус белый", price: 10),
        Addon(name: "Соус острый", price: 10),
      ],
    ),

    //wok
    Food(
      name: "Тяхан с Говядиной",
      description: "Пиздец какой вкусный вок",
      imagePath: "assets/images/wok/1.jpg",
      price: 419,
      category: FoodCategory.wok,
      availableAddons: [
        Addon(name: "Соус Сладкий чили", price: 0),
        Addon(name: "Соус Сливочный", price: 0),
        Addon(name: "Соус Устричный", price: 0),
      ],
    ),
    Food(
      name: "Удон с Креветкой",
      description: "Пиздец какой вкусный вок",
      imagePath: "assets/images/wok/2.jpg",
      price: 449,
      category: FoodCategory.wok,
      availableAddons: [
        Addon(name: "Соус Сладкий чили", price: 0),
        Addon(name: "Соус Сливочный", price: 0),
        Addon(name: "Соус Устричный", price: 0),
      ],
    ),
    Food(
      name: "Удон с Курицей",
      description: "Пиздец какой вкусный вок",
      imagePath: "assets/images/wok/3.jpg",
      price: 399,
      category: FoodCategory.wok,
      availableAddons: [
        Addon(name: "Соус Сладкий чили", price: 0),
        Addon(name: "Соус Сливочный", price: 0),
        Addon(name: "Соус Устричный", price: 0),
      ],
    ),

    //drinks
    Food(
      name: "Липтон(зелёный) 0.5л",
      description: "Пиздец какой вкусный напиток",
      imagePath: "assets/images/drinks/1.png",
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Липтон(лимон) 0.5л",
      description: "Пиздец какой вкусный напиток",
      imagePath: "assets/images/drinks/2.png",
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Любимый сок 0.2л",
      description: "Яблочный/мультифрукт/апельсиновый",
      imagePath: "assets/images/drinks/3.png",
      price: 50,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Кола Любимая 0.5л",
      description: "Пиздец какой вкусный напиток",
      imagePath: "assets/images/drinks/4.png",
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Кола Любимая 1л",
      description: "Пиздец какой вкусный напиток",
      imagePath: "assets/images/drinks/5.png",
      price: 120,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  List<Food> get menu => _menu;

  ///операции
  ///add to cart
  ///remove to cart
  ///get total price
  ///get total number of items in cart
  ///clear cart

  ///generate a receipt
  ///format double value into money
  ///format list of addons into a string summary
}
