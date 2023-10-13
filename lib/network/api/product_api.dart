
import 'package:dio/dio.dart';
import 'package:fake_store/constant/api_constant.dart';

import 'package:fake_store/network/response/all_product_response/product_response.dart';
import 'package:fake_store/network/response/single_product_response/single_product_response.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class  ProductAPI{
  factory ProductAPI(Dio dio)=> _ProductAPI(dio);
    

  @GET(kGetAllProductsEndPoint)
  Future<AllProductResponse> getAllProducts ();

  @GET(kGetOneProductEndPoint)
  Future<SingleProductResponse> getOneProduct(
    @Path(kPathParameterSlug)
    String slug);

}