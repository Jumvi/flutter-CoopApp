import 'package:firstapp/screen/product/products.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class LandingProduct extends StatelessWidget {
  const LandingProduct({super.key});
  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [ProductsCards()],
          ),
        ),
      ),
    );
  }
}
