import 'package:firstapp/screen/product/scroll_product.dart';
import 'package:firstapp/screen/product/searchForm.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class ShopList extends StatelessWidget {
  const ShopList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SearchForm(),
            SingleChildScrollViewCard(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All"),
                Text(
                  "Sport",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Text("Electronic"),
                Text("Accessoires"),
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
