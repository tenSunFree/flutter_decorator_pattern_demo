import 'package:flutter_decorator_pattern_demo/meal/model/addPurchase/add_purchase_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';

class TofuAddPurchaseBasicMeal extends AddPurchaseBasicMeal {
  TofuAddPurchaseBasicMeal(BasicMeal pizza) : super(pizza) {
    description = '油豆腐';
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
