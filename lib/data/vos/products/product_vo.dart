import 'package:fake_store/data/vos/category/category_vo.dart';
import 'package:fake_store/data/vos/created_by_vo/created_by_vo.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_vo.g.dart';

@JsonSerializable()
class ProductVO{

  @JsonKey(name : "_id")
    final String id;
  
    @JsonKey(name : "title")
    final String title;
  
    @JsonKey(name : "price")
    final int price;
  
    @JsonKey(name : "category")
    final CategoryVO category;
  
    @JsonKey(name : "description")
     String ?  description;
  
    @JsonKey(name : "createdBy")
    final CreatedByVO   createdBy;
  
    @JsonKey(name : "createdAt")
    final String createdAt;
  
    @JsonKey(name : "updatedAt")
    final String updatedAt;
  
    @JsonKey(name : "slug")
    final String slug;
  
    @JsonKey(name : "image")
    String ? image;

  ProductVO(this.id, this.title, this.price, this.category, this.description, this.createdBy, this.createdAt, this.updatedAt, this.slug, this.image);
  

  factory ProductVO.fromJson(Map<String,dynamic>json)=>_$ProductVOFromJson(json);

}