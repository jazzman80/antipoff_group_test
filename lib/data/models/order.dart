import 'package:antipoff_group_test/data/models/product.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order.g.dart';

@JsonSerializable(explicitToJson: true)
class Order {
  String id;
  int number;
  double totalPrice;
  DateTime date;
  List<Product> products;

  Order(
    this.id,
    this.number,
    this.totalPrice,
    this.date,
    this.products,
  );

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
