class MealDetailBean {
  final String name;
  bool selected = false;

  MealDetailBean(this.name);

  void setSelected(bool value) => selected = value;
}
