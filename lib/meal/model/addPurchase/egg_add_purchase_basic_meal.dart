import 'package:flutter_decorator_pattern_demo/meal/model/addPurchase/add_purchase_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';

class EggAddPurchaseBasicMeal extends AddPurchaseBasicMeal {
  EggAddPurchaseBasicMeal(BasicMeal pizza) : super(pizza) {
    description = '滷蛋';
  }

  @override
  String getDescription() {
    return '${pizza.getDescription()}，$description';
  }

  @override
  double getPrice() {
    return pizza.getPrice() + 15.00;
  }
}
