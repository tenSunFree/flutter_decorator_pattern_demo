import 'package:flutter_decorator_pattern_demo/meal/model/addPurchase/egg_add_purchase_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/addPurchase/miso_add_purchase_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/addPurchase/tofu_add_purchase_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/basic/chinese_basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/meal_detail_bean.dart';

class MealModel {
  static const int MISO = 1;
  static const int TOFU = 2;
  static const int EGG = 3;

  final Map<int, MealDetailBean> _mealDetailBeanMap = {
    MISO: MealDetailBean('Miso'),
    TOFU: MealDetailBean('Tofu'),
    EGG: MealDetailBean('Egg')
  };

  Map<int, MealDetailBean> getMealDetailBeanMap() => _mealDetailBeanMap;

  BasicMeal getChineseBasicMeal(Map<int, MealDetailBean> mealDetailBeanMap) {
    BasicMeal meal = ChineseBasicMeal('滷白菜');
    if (mealDetailBeanMap[MISO].selected) {
      meal = MisoAddPurchaseBasicMeal(meal);
    }
    if (mealDetailBeanMap[TOFU].selected) {
      meal = TofuAddPurchaseBasicMeal(meal);
    }
    if (mealDetailBeanMap[EGG].selected) {
      meal = EggAddPurchaseBasicMeal(meal);
    }
    return meal;
  }
}
