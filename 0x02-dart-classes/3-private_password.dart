class Password {
  String _password = '';

  Password({String password = ''}) {
    this._password = password;
  }

  bool isValid() {
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,16}$');
    return regex.hasMatch(_password);
  }

  @override
  toString() {
    return 'Your Password is: ${_password}';
  }
}
