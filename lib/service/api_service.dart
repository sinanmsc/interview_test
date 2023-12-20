import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:interview_test/model/product_model.dart';

class ProductApi {
  static Dio dio =
      Dio(BaseOptions(baseUrl: 'https://interview.sanjaysanthosh.me'));
  static Future<List<Product>?> getProducts() async {
    try {
      Response response = await dio.get('/api/items');
      if (response.statusCode == 200) {
        final products = <Product>[];
        for (final product in response.data) {
          products.add(Product.fromJson(product));
        }
        return products;
      }
      return null;
    } on DioException catch (e) {
      log('$e');
    }
    return null;
  }
}
