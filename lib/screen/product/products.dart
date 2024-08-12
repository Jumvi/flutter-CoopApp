import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCards extends StatelessWidget {
  const ProductsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            width: 300,
            height: getProportionateScreenHeight(100),
            child: Card(
              color: const Color.fromARGB(255, 42, 163, 174),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/sales2.svg",
                          width: getProportionateScreenWidth(20),
                          height: getProportionateScreenHeight(20),
                        ),
                        Text(
                          'Profitez de la promotion',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                    Text(
                      "Jusqu'a 50% de achats",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(10)),
            child: Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/electronic.svg"),
                    Text('Electronics')
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/electronic.svg"),
                    Text('Electronics')
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/electronic.svg"),
                    Text('Electronics')
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/electronic.svg"),
                    Text('Electronics')
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/electronic.svg"),
                    Text('Electronics')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
