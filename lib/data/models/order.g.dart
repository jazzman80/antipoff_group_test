// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      json['id'] as String,
      json['number'] as int,
      (json['totalPrice'] as num).toDouble(),
      DateTime.parse(json['date'] as String),
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'totalPrice': instance.totalPrice,
      'date': instance.date.toIso8601String(),
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
