import 'package:json_annotation/json_annotation.dart';
part 'product_category.g.dart';

@JsonSerializable()
class ProductCategory {
  String id;
  String name;
  int productsCount;

  ProductCategory(
    this.id,
    this.name,
    this.productsCount,
  );

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);
}
