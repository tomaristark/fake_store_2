
import 'package:dio/dio.dart';
import 'package:fake_store/data/vos/products/product_vo.dart';
import 'package:fake_store/network/api/product_api.dart';
import 'package:fake_store/network/data_agent/product_data_agent.dart';

class ProductDataAgentImpl extends ProductDataAgent{
  late ProductAPI _productAPI;

  ProductDataAgentImpl._(){
    _productAPI = ProductAPI(Dio());
  }

  static final ProductDataAgentImpl _singleton = ProductDataAgentImpl._();

 factory ProductDataAgentImpl() => _singleton;

  @override
  Future<List<ProductVO>?> getAllProducts() {
    return _productAPI.getAllProducts().asStream()
    .map((event) => event.data).first;
  }

  @override
  Future<ProductVO?> getOneProduct(String slug) {
    return _productAPI.getOneProduct(slug).asStream()
    .map((event) => event.data).first;
    }
  }
