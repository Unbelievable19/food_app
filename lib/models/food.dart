class Food {
  final String name;            // филадельфия классик
  final String description;     // очень инетесное описание
  final String imagePath;       // закинуть фотки в либу, либо грузить с сервера
  final int price;              // цена 499 руб
  final FoodCategory category;  // роллы (либо холодные роллы)
  List<Addon> availableAddons;  // допы

  Food({required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons
  });
}

enum FoodCategory {
  rolls,
  friedRolls,
  bakedRolls,
  sets,
  pizza,
  wok,
  snacks,
  drinks,
}

class Addon {
  String name;
  int price;

  Addon({
    required this.name,
    required this.price,
  });
}
