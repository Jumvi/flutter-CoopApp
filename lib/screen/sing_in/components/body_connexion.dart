import 'package:firstapp/screen/sing_in/components/connexion_formulaire.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              Text('Bienvenue',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
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
            ],
          ),
        ),
      ),
    );
  }
}
