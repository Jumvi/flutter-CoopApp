import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';
import '../../constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      "COOPApp",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(36),
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                    ),
                    Text(
                      widget.text,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                    ),
                    SvgPicture.asset(
                      widget.image,
                      height: getProportionateScreenHeight(350),
                      width: getProportionateScreenWidth(265),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
