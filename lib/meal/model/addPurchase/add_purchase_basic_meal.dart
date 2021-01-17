import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';

abstract class AddPurchaseBasicMeal extends BasicMeal {
  final BasicMeal pizza;

  AddPurchaseBasicMeal(this.pizza);

  @override
  String getDescription() {
    return pizza.getDescription();
  }

  @override
  double getPrice() {
    return pizza.getPrice();
  }
}
