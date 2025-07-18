import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final data = await fetchUserData();
  var dataToJson = jsonDecode(data);
  return (dataToJson['id']);
}
