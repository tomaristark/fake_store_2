
import '../../data/vos/products/product_vo.dart';

abstract class ProductDataAgent{

  Future<List<ProductVO>?> getAllProducts();

  Future<ProductVO?>getOneProduct(String slug);
}