class User {
  String name = '';
  int age = 0;
  double height = 0.00;

  User({required this.name, required this.age, required this.height});

  toJson() {
    return ({'name': this.name, 'age': this.age, 'height': this.height});
  }
}
