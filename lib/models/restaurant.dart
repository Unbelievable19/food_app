import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
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
      description:
          "Соус красный, Сыр Моцарелла, Куриная грудка, Пеперони, Халапеньо, Соус Острый.",
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


  ///user cart
  List<CartItem> _cart = [];

  ///delivery address(юзер может поменять/обновить)
  String _deliveryAddress = "бла бла 151 улица";


  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  ///операции(логика)


  ///add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  ///remove to cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  ///get total price
  int getTotalPrice() {
    int total = 0;

    for (CartItem cartItem in _cart) {
      int itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  ///get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  ///clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  ///update del address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }


  ///generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    //receipt.writeln("Ваш чек");
    //receipt.writeln();

    String formattedDate =
        DateFormat('Дата: dd.MM.yyyy').format(DateTime.now());
    String formattedDateTime =
    DateFormat('Время: HH:mm').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln(formattedDateTime);
    receipt.writeln();
    receipt.writeln();
    //receipt.writeln("------------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Дополнения: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    //receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Количество позиций: ${getTotalItemCount()}");
    receipt.writeln("Цена: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Адрес доставки: $deliveryAddress");

    return receipt.toString();
  }


  ///format double value into money
  String _formatPrice(int price) {
    return "\Р${price.toStringAsFixed(2)}";
  }

  ///format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
