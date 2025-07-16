import '3-private_password.dart';

class User extends Password {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.00;
  String user_password;
  late bool passwordValid;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password){
    passwordValid = isValid();
  }

  toJson() {
    return ({
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height,
    });
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['Password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height}, Password: ${passwordValid})';
  }
}
