import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:product_api/models/consts/api_consts.dart';
import 'package:product_api/models/products_model.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProducts() async {
    // https://api.escuelajs.co/api/v1/products

    var uri = Uri.https(BASE_URL, '/api/v1/products');
    var response = await http.get(uri);

    // print('response ${jsonDecode(response.body)}');
    var data = jsonDecode(response.body);

    List tempList = [];
    for (var v in data) {
      tempList.add(v);
    }
    return ProductsModel.productFromSnapshot(tempList);
  }
}
