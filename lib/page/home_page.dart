import 'package:fake_store/constant/color.dart';
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/data/vos/products_vo.dart';
import 'package:fake_store/page/cart_page.dart';
import 'package:fake_store/page/cart_product_list.dart';
import 'package:fake_store/page/product_detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductVO> productList = [];

  @override
  void initState() {
    productList = products;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kProductsText),
        actions: [
          GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const CartPage())).then((value) {
                if(mounted){
                  setState(() {
                    
                  });
                }
              });
        },
        child: Padding(
            padding: const EdgeInsets.only(right: 20,top: 2),
            child: Stack(children: [
             const  SizedBox(
                height: kSP50x,
                width: kSP40x,
                child: Icon(Icons.shopping_cart)),
              Positioned(
                bottom: kSP30x,
                left: kSP20x,
                child: (cardProductList.isNotEmpty)? Container(
                  alignment: Alignment.center,
                  width: kSP15x,
                  height: kSP20x,
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: kShoppigCartCountColor
                  ),
                  child: Text(cardProductList.length.toString()),
                  
                ):const SizedBox.shrink()
              )
            ])))
        ],
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (_,index){
          // final productVo = products[index];
          return ProductCard(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              ProductDetailPage(productVO: productList[index]))
              ).then((value) {
                setState(() {       
                });
              });
            },
            productVo: productList[index]) ;
        }),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productVo, this.hasTrailing  = false, required this.onTap, this.tapTORemove,
  });
  final bool hasTrailing ;
  // final int index;
  final ProductVO productVo;
  final Function onTap;
  final Function(ProductVO)? tapTORemove;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onTap(),
        // isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          leading: CircleAvatar(
            radius: kSP20x,
            backgroundColor: kPrimayColor,
            child: Text( productVo.prodcutID.toString(),style: const TextStyle(
              color: kSecondaryTextColor
            ),),

          ),
          title: Text(productVo.productName),
          titleTextStyle: const TextStyle(
            color: kPrimayTextColor,
            fontWeight: FontWeight.bold,
            fontSize:kProductNameFS
          ),
          subtitle:Text(productVo.prodcutDescription,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          ) ,
        trailing:(hasTrailing)? GestureDetector(
          onTap: () {
            if(tapTORemove != null){
              tapTORemove!(productVo);
            }
            
          },
          child:const  Icon(Icons.delete_forever)):
        null
        ,
      ),
    );
  }
}


