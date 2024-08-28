import 'package:firstapp/screen/product/command_list.dart';
import 'package:firstapp/screen/product/landing.dart';
import 'package:firstapp/screen/product/products.dart';
import 'package:firstapp/screen/product/shop_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});
  static String routeName = "/products";

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    LandingProduct(),
    ShopList(),
    CommandList(),
  ];

  void _onItempTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/homeIcon.svg",
              width: 24,
              height: 24,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/shopIcone.svg",
                height: 24,
                width: 24,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/commandIcon.svg",
                width: 24,
                height: 24,
              ),
              label: 'Commands'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItempTapped,
      ),
    );
  }
}
