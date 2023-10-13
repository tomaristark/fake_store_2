
import 'package:fake_store/data/vos/products/product_vo.dart';

abstract class ProductModel{

  Future<List<ProductVO>?> getAllProducts();

  Future<ProductVO?>getOneProduct(String slug);


} 