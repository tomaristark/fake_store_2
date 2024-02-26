

import 'package:fake_store/constant/color.dart';
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/data/model/product_model_impl.dart';

import 'package:fake_store/page/cart_product_list.dart';
import 'package:flutter/material.dart';

import '../data/model/product_model.dart';
import '../data/vos/products/product_vo.dart';

final ProductModel _productModel = ProductModelImpl();

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.slug,});

  final String slug;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();


}

class _ProductDetailPageState extends State<ProductDetailPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAllinOnePacKagesText),
      ),
      body: FutureBuilder<ProductVO?>(
        future: _productModel.getOneProduct(widget.slug), 
        builder: (context,snapShot){
          if(snapShot.connectionState ==ConnectionState.waiting ){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(snapShot.hasError){
            return Center(child: Text("${snapShot.error}"),);
          }
          final result = snapShot.data;
          return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSP15x),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ProductImageView(image: result?.image ?? ""),
                 ProductPriceView(price:result?.price ?? 0),
                const ProductDetailHeadTextView(headText: kDescriptionText,),
                ProductDescriptionView(description: result?.description ?? ""),
                const ProductDetailHeadTextView(headText: kCreatorText),
                ProductCreatorView(creator: result?.createdBy.name ?? ''),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kSP10x),
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if(result != null){
                          cardProductList.add(result);
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Added"))
                        );
                      });
                    },  
                  child: const Center(child: Text(kBuyButtonText,style: TextStyle(
                    color: kPrimayTextColor,
                    fontSize: kBuyButtomTextFS
                  ),),),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width, kBuyButtonHeight)
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                     kBuyButtonColor
                    )
                  ),
                  ),
                )
              ]),
          );
        }
        )
    );
  }
}

class ProductCreatorView extends StatelessWidget {
  const ProductCreatorView({
    super.key,
    required this.creator,
  });

  final String creator;

  @override
  Widget build(BuildContext context) {
    return Text(
   creator,
      // "Sayr Gyi",
      style: const TextStyle(fontSize: kCreatorNameTextFS, fontWeight: FontWeight.w500),
    );
  }
}

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}

class ProductPriceView extends StatelessWidget {
  const ProductPriceView({
    super.key,
    required this.price,
  });

  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:const  EdgeInsets.symmetric(vertical: kSP15x),
     child: Row(
       children: [
        const  Icon(
           Icons.monetization_on_outlined,
           size: kMoneyIconSize,
         ),
         Padding(
           padding: const EdgeInsets.only(left: kSP20x),
           child: Text(
             "${price} \$",
             style: const TextStyle(fontSize: kPriceFS),
           ),
         )
       ],
     ),
                );
  }
}

class ProductImageView extends StatelessWidget {
  const ProductImageView({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kSP10x),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Image.network(
          image,
          // "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProductDetailHeadTextView extends StatelessWidget {
  const ProductDetailHeadTextView({
    super.key, required this.headText,
  });
  final String headText;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const  EdgeInsets.symmetric(vertical: kSP5x),
        child: Text(
          headText,
          style: const TextStyle(fontSize: kProductDetailHeadTextFS, fontWeight: FontWeight.bold),
        ));
  }
}
