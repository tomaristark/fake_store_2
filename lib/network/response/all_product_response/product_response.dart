

import 'package:fake_store/data/vos/products/product_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class AllProductResponse{
  @JsonKey(name: "data")
  final List<ProductVO> data;
  @JsonKey(name: "status")
  final int status;
  @JsonKey(name: "message")
  final String message;

  AllProductResponse(this.data, this.status, this.message);
  
  factory AllProductResponse.fromJson(Map<String,dynamic>json)=> _$AllProductResponseFromJson(json);

}