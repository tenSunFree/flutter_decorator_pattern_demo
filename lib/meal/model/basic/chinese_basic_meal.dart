import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';

class ChineseBasicMeal extends BasicMeal {
  ChineseBasicMeal(String description) {
    this.description = description;
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getPrice() {
    return 100.00;
  }
}
