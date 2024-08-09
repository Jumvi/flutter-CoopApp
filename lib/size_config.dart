import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

// Prendre la hauteur proportionnellement à la taille de l'écran
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight =
      SizeConfig.screenHeight ?? 0.0; // Fournir une valeur par défaut si null
  return (inputHeight / 812.0) * screenHeight;
}

// Prendre la largeur proportionnellement à la taille de l'écran
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth =
      SizeConfig.screenWidth ?? 0.0; // Fournir une valeur par défaut si null
  return (inputWidth / 375) * screenWidth;
}
