import '6-password.dart';

class User extends Password {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.00;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password,
  }) : super(password: user_password ?? '');

  String? get user_password => password.isEmpty ? null : password;

  set user_password(String? pwd) {
    password = pwd ?? '';
  }

  bool isPasswordValid() {
    return isValid();
  }

  bool get pwdValid => isValid();

  Map<String, dynamic> toJson() {
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
    );
  }

  @override
  String toString() {
    return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height}, Password: ${isPasswordValid()})';
  }
}
