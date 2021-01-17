import 'package:flutter/material.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/basic/basic_meal.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/meal_detail_bean.dart';
import 'package:flutter_decorator_pattern_demo/meal/model/meal_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MealScreen extends StatefulWidget {
  @override
  _MealScreenState createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  final MealModel mealModel = MealModel();
  Map<int, MealDetailBean> _mealDetailBeanMap;
  String settleAccountsDescription;
  double settleAccountsPrice;

  @override
  void initState() {
    super.initState();
    _mealDetailBeanMap = mealModel.getMealDetailBeanMap();
    settleAccountsDescription = "";
    settleAccountsPrice = 100.00;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset('assets/icon_background.png'),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(child: SizedBox(), flex: 725),
        buildMisoContainer(),
        Expanded(child: SizedBox(), flex: 113),
        buildTofuContainer(),
        Expanded(child: SizedBox(), flex: 77),
        buildEggContainer(),
        Expanded(child: SizedBox(), flex: 125),
        buildSettleAccountsCenter(),
        Expanded(child: SizedBox(), flex: 80)
      ])
    ]));
  }

  Container buildMisoContainer() {
    return Container(
        margin: EdgeInsets.only(left: 12),
        child: Checkbox(
            value: _mealDetailBeanMap[MealModel.MISO].selected,
            activeColor: Colors.black,
            checkColor: Colors.white,
            onChanged: (value) {
              setState(() {
                _mealDetailBeanMap[MealModel.MISO].selected = value;
                BasicMeal meal =
                    mealModel.getChineseBasicMeal(_mealDetailBeanMap);
                settleAccountsPrice = meal.getPrice();
              });
            }));
  }

  Container buildTofuContainer() {
    return Container(
        margin: EdgeInsets.only(left: 12),
        child: Checkbox(
            value: _mealDetailBeanMap[MealModel.TOFU].selected,
            activeColor: Colors.black,
            checkColor: Colors.white,
            onChanged: (value) {
              setState(() {
                _mealDetailBeanMap[MealModel.TOFU].selected = value;
                BasicMeal meal =
                    mealModel.getChineseBasicMeal(_mealDetailBeanMap);
                settleAccountsPrice = meal.getPrice();
              });
            }));
  }

  Container buildEggContainer() {
    return Container(
        margin: EdgeInsets.only(left: 12),
        child: Checkbox(
            hoverColor: Colors.red,
            value: _mealDetailBeanMap[MealModel.EGG].selected,
            activeColor: Colors.black,
            checkColor: Colors.white,
            onChanged: (value) {
              setState(() {
                _mealDetailBeanMap[MealModel.EGG].selected = value;
                BasicMeal meal =
                    mealModel.getChineseBasicMeal(_mealDetailBeanMap);
                settleAccountsPrice = meal.getPrice();
              });
            }));
  }

  Center buildSettleAccountsCenter() {
    return Center(
        child: GestureDetector(
            child: Text("新增1份至購物車 • ＄$settleAccountsPrice",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              BasicMeal meal =
                  mealModel.getChineseBasicMeal(_mealDetailBeanMap);
              var description = meal.getDescription();
              Fluttertoast.showToast(
                  msg: "餐點︰$description。",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }));
  }
}
