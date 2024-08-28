import 'package:firstapp/screen/Registered/registered_body.dart';
import 'package:firstapp/screen/product/bottom_navigation.dart';
import 'package:firstapp/screen/product/landing.dart';
import 'package:firstapp/screen/sing_in/sing_in_screen.dart';
import 'package:firstapp/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SingInScreen.routeName: (context) => SingInScreen(),
  RegisteredBody.routeName: (context) => RegisteredBody(),
  LandingProduct.routeName: (context) => LandingProduct(),
  BottomWidget.routeName: (context) => BottomWidget(),
};
