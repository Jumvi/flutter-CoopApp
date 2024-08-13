import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class ProductListPub extends StatelessWidget {
  const ProductListPub({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            'Spécialement pour toi',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/images/accessoires1.jpg",
                          height: getProportionateScreenHeight(150),
                          width: getProportionateScreenWidth(200),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 10.0,
                          left: 10.0,
                          child: Text(
                            'Accessoires',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      blurRadius: 10.0,
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(2.0, 2.0))
                                ]),
                          ))
                    ],
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/appareilphoto.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(200),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/blouson1.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(200),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/chemise1.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(200),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/Electronic1.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(200),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/robe1.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(200),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/images/sport1.jpg",
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(250),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
