import 'package:firstapp/screen/Registered/registered_body.dart';
import 'package:firstapp/screen/sing_in/components/connexion_formulaire.dart';
import 'package:firstapp/screen/sing_in/sing_in_screen.dart';
import 'package:firstapp/screen/splash/components/routes.dart';
import 'package:firstapp/screen/splash/splash_screen.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BodyConnexion extends StatelessWidget {
  const BodyConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text('',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(32),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center),
              Text(
                'connectez-vous en saissant votre mot de pass ainsi que votre e-mail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
              SingInFormulair(),
              SizedBox(
                height: getProportionateScreenHeight(120),
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/google.svg",
                      width: getProportionateScreenWidth(20),
                      height: getProportionateScreenHeight(20),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    SvgPicture.asset("assets/icons/whatsaap.svg",
                        width: getProportionateScreenWidth(20),
                        height: getProportionateScreenHeight(20)),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    SvgPicture.asset("assets/icons/facebook.svg",
                        width: getProportionateScreenWidth(20),
                        height: getProportionateScreenHeight(20)),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Center(
                  child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("vous n'avez pas de compte?"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisteredBody.routeName);
                      },
                      child: Text(
                        'Créer un compte',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
