
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/data/vos/products_vo.dart';
import 'package:fake_store/page/cart_product_list.dart';
import 'package:fake_store/page/home_page.dart';
import 'package:fake_store/page/product_detail_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}


class _CartPageState extends State<CartPage> {

// @override
//   void initState() {
//     return (cardProductList.isEmpty)?NoItemInCartView():
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kCartText),

      ),
      body: (cardProductList.isEmpty)?const NoItemInCartView():
      ItemInCartView(itemInCart:cardProductList,tapTORemove: (productVO){
        cardProductList.remove(productVO);
        if(mounted){
          setState(() {  });
        }
      },)
    );
  }
}

class ItemInCartView extends StatelessWidget {
  const ItemInCartView({
    super.key, required this.itemInCart, required this.tapTORemove,
  });
  final List<ProductVO>itemInCart;
  final Function(ProductVO) tapTORemove;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemInCart.length,
      itemBuilder:(_,index){
        return ProductCard(productVo: itemInCart[index],hasTrailing: true,onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailPage(productVO: itemInCart[index])));
        },
        tapTORemove:(productVO){
            tapTORemove(productVO);
        }
        );
      }
      );
    
  }
}

class NoItemInCartView extends StatelessWidget {
  const NoItemInCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(kNoItemText),
    );
  }
}