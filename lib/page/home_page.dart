import 'package:fake_store/constant/color.dart';
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/data/model/product_model.dart';
import 'package:fake_store/data/model/product_model_impl.dart';
import 'package:fake_store/data/vos/products/product_vo.dart';
import 'package:fake_store/data/vos/products_vo.dart';
import 'package:fake_store/page/cart_page.dart';
import 'package:fake_store/page/cart_product_list.dart';
import 'package:fake_store/page/product_detail_page.dart';
import 'package:fake_store/utils/extension.dart';
import 'package:fake_store/utils/random_colors.dart';
import 'package:flutter/material.dart';

final ProductModel _productModel = ProductModelImpl();
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DummyProductVO> productList = [];

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
      body: FutureBuilder<List<ProductVO>?>(
        future:_productModel.getAllProducts() , 
        builder: (context,snapShot){
          if(snapShot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(snapShot.hasError){
            return  Center(child: Text("adwad  :${snapShot.error}"),);
          }
          final result = snapShot.data;
          return ListView.builder(
        itemCount: result?.length ?? 0,
        itemBuilder: (context,index){
          return ProductCard(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              ProductDetailPage(slug: result?[index].slug ?? "",))
              ).then((value) {
                setState(() {       
                });
              });
            },
            productVo: result?[index]) ;
        });
        })
    );
  }
}

class ProductCard extends StatelessWidget {
 ProductCard({super.key, this.hasTrailing=false, required this.onTap, this.tapTORemove, required this.productVo});
  final bool hasTrailing ;
  // final int index;
  ProductVO ? productVo;
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
            backgroundColor: RandomColor.getRandomColor() ,
            child: Text( productVo?.title.getPrefix() ?? "",style: const TextStyle(
              color: kSecondaryTextColor
            ),),

          ),
          title: Text(productVo?.title ?? ""),
          titleTextStyle: const TextStyle(
            color: kPrimayTextColor,
            fontWeight: FontWeight.bold,
            fontSize:kProductNameFS
          ),
          subtitle:Text(productVo?.description??"",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          ) ,
        trailing:(hasTrailing)? GestureDetector(
          onTap: () {
            if(tapTORemove != null){
              tapTORemove!(productVo!);
            }
            
          },
          child:const  Icon(Icons.delete_forever)):
        null
        ,
      ),
    );
  }
}


