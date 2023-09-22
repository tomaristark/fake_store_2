import 'package:fake_store/constant/color.dart';
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/data/vos/products_vo.dart';
import 'package:fake_store/page/cart_product_list.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.productVO,});

  final ProductVO productVO;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSP15x),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ProductImageView(widget: widget),
                 ProductPriceView(widget: widget),
                const ProductDetailHeadTextView(headText: kDescriptionText,),
                ProductDescriptionView(widget: widget),
                const ProductDetailHeadTextView(headText: kCreatorText),
                ProductCreatorView(widget: widget),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kSP10x),
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        cardProductList.add(widget.productVO);
                        widget.productVO.IsInCart=true;
                      });
                    ScaffoldMessenger.of(context).showSnackBar(
                     const  SnackBar(
                        backgroundColor: Colors.blue,
                        content: 
                      Text(kSnackBarMessgae)
                      )
                    );     
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
      )
    );
  }
}

class ProductCreatorView extends StatelessWidget {
  const ProductCreatorView({
    super.key,
    required this.widget,
  });

  final ProductDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Text(
     widget.productVO.productCreator,
      // "Sayr Gyi",
      style: const TextStyle(fontSize: kCreatorNameTextFS, fontWeight: FontWeight.w500),
    );
  }
}

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({
    super.key,
    required this.widget,
  });

  final ProductDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.productVO.prodcutDescription,
      // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}

class ProductPriceView extends StatelessWidget {
  const ProductPriceView({
    super.key,
    required this.widget,
  });

  final ProductDetailPage widget;

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
             "${widget.productVO.productPrice} \$",
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
    required this.widget,
  });

  final ProductDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kSP10x),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Image.network(
          widget.productVO.productImage,
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
