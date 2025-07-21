import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final data = (await fetchUserData());
    var dataToJson = jsonDecode(data);
  	return ('Hello ${dataToJson['username']}');
  } catch (error) {
    return ('error caught: $error');
  }
}

Future<String> loginUser() async {
  try {
	final isLogin = await checkCredentials();
    if (isLogin) {
      print('There is a user: true');
      return greetUser();
    } else {
		print('There is a user: false');
		return ('Wrong credentials');
	}
	} catch (error) {
		return ('error caught: $error');
  }
}
