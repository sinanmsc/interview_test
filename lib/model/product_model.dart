import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  factory Product(
      {required int id,
      required String title,
      required double price,
       String? description,
      required String category,
      required String image,
      required Map<String, dynamic> rating}) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
