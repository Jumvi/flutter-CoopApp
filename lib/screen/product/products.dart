import 'package:firstapp/screen/product/bottom_navigation.dart';
import 'package:firstapp/screen/product/category_title.dart';
import 'package:firstapp/screen/product/popular_product.dart';
import 'package:firstapp/screen/product/product_list_pub.dart';
import 'package:firstapp/screen/product/searchForm.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCards extends StatelessWidget {
  ProductsCards({super.key});

  final List<Map<String, dynamic>> popularData = [
    {
      "src": "assets/images/chemise1.jpg",
      "prix": 25,
      "type": "Vêtements",
      "couleur": "Bleu",
    },
    {
      "src": "assets/images/blouson1.jpg",
      "prix": 80,
      "type": "Vêtements",
      "couleur": "Noir",
    },
    {
      "src": "assets/images/robe1.jpg",
      "prix": 50,
      "type": "Vêtements",
      "couleur": "Rouge",
    },
    {
      "src": "assets/images/sport1.jpg",
      "prix": 60,
      "type": "Vêtements de sport",
      "couleur": "Blanc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: SearchForm(),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
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
                child: header()),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          CategoryTitle(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          ProductListPub(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Produits populaires",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: popularData.map((product) {
                    return Card(
                      child: PopularCard(
                          path: product["src"]!,
                          type: product["type"],
                          prix: product["prix"],
                          couleur: product["couleur"]),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
        ],
      ),
    );
  }
}

Widget header() {
  return Center(
    child: Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Column(
          children: [
            Row(
              children: [],
            )
          ],
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
          "Jusqu'a 50% de reduction",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    ),
  );
}

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    ProductsCards(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "home"),
        ],
      ),
    );
  }
}
