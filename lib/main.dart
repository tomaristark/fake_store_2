
import 'package:fake_store/data/model/product_model.dart';
import 'package:fake_store/data/model/product_model_impl.dart';
import 'package:fake_store/page/home_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());

  ProductModel _model =ProductModelImpl();
  _model.getOneProduct("special-cotton-shirt-for-men").then((value) => print(value)).catchError((e) => print(e));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
