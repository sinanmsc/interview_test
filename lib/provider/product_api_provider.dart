import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/model/product_model.dart';
import 'package:interview_test/service/api_service.dart';

final getProductProvider = FutureProvider<List<Product>?>((ref) async {
  return await ProductApi.getProducts();
});
