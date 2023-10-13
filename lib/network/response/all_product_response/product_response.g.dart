// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllProductResponse _$AllProductResponseFromJson(Map<String, dynamic> json) =>
    AllProductResponse(
      (json['data'] as List<dynamic>)
          .map((e) => ProductVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as int,
      json['message'] as String,
    );

Map<String, dynamic> _$AllProductResponseToJson(AllProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };
