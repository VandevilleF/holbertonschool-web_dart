import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final data = await fetchUserData();
    var dataToJson = jsonDecode(data);
    final userId = dataToJson['id'];

    final useOrder = await fetchUserOrders(userId);
    var userProduct = jsonDecode(useOrder);
    num totalPrice = 0;

    for (var product in userProduct) {
      var price = jsonDecode(await fetchProductPrice(product));
      totalPrice += price;
    }
    return totalPrice;
    } catch (error) {
    print(error);
    return -1;
  }
}
