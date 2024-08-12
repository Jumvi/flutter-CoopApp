import 'package:firstapp/screen/Registered/registered_body.dart';
import 'package:firstapp/screen/sing_in/sing_in_screen.dart';
import 'package:firstapp/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SingInScreen.routeName: (context) => SingInScreen(),
  RegisteredBody.routeName: (context) => RegisteredBody(),
};
