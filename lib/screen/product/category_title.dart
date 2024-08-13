import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Center(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(getProportionateScreenHeight(10)),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 239, 218, 185),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      child: SvgPicture.asset("assets/icons/electronic.svg"),
                    ),
                    Text(
                      'Electronics',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(10)),
                    )
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 239, 218, 185),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      child: SvgPicture.asset("assets/icons/decoration.svg"),
                    ),
                    Text(
                      'Decoration',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(10)),
                    )
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 239, 218, 185),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      child: SvgPicture.asset(
                        "assets/icons/sport.svg",
                        width: getProportionateScreenWidth(30),
                        height: getProportionateScreenHeight(30),
                      ),
                    ),
                    Text(
                      'sport',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(10)),
                    )
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 239, 218, 185),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      child: SvgPicture.asset(
                        "assets/icons/beaute.svg",
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(30),
                      ),
                    ),
                    Text(
                      'Beauté',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(10)),
                    )
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 239, 218, 185),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      child: SvgPicture.asset(
                        "assets/icons/vetement.svg",
                        width: getProportionateScreenWidth(40),
                        height: getProportionateScreenHeight(40),
                      ),
                    ),
                    Text(
                      'vetements',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(10)),
                    ),
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
