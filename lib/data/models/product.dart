import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  String id;
  String categoryId;
  String name;
  double rating;
  double price;

  @JsonKey(ignore: true)
  bool isOrdered = false;

  Product(
    this.id,
    this.categoryId,
    this.name,
    this.rating,
    this.price,
  );

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
