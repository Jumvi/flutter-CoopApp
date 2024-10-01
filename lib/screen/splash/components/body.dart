import 'package:firstapp/constants.dart';
import 'package:firstapp/screen/sing_in/sing_in_screen.dart';
import 'package:firstapp/screen/splash/components/default_button.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import '../splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bienvenu sur COPPApp, vive votre marché",
      "image": "assets/icons/shop.svg"
    },
    {
      "text":
          "Nous vous donnons la possibilité de vendre et achter à partir de chez vous",
      "image": "assets/icons/shop2.svg"
    },
    {
      "text": "Un marché facile à exploré, une application facile à utilisée",
      "image": "assets/icons/shop3.svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"]!,
                      text: splashData[index]['text']!,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.1, // Ajustez la hauteur en fonction de vos besoins
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 2,
                    ),
                    SizedBox(
                        width: getProportionateScreenWidth(250),
                        height: getProportionateScreenHeight(56),
                        child: DefaultButton(
                          press: () {
                            Navigator.pushNamed(
                                context, SingInScreen.routeName);
                          },
                          text: 'Visiter',
                        )),
                    Spacer(flex: 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // AnimatedContainer buildDot({required int index}) {
  //   return AnimatedContainer(
  //     duration: kAnimationDuration,
  //     margin: EdgeInsets.only(right: 5),
  //     height: 6,
  //     width: currentPage == index ? 20 : 6,
  //     decoration: BoxDecoration(
  //       color: currentPage == index ? kPrimaryColor : Colors.grey,
  //       borderRadius: BorderRadius.circular(3),
  //     ),
  //   );
  // }
}
