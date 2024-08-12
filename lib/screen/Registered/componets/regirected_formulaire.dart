import 'package:firstapp/screen/Registered/componets/regirected_controller.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class RegirectedFormulaire extends StatelessWidget {
  const RegirectedFormulaire({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              Text(
                'Créer votre compte',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(30),
                    color: Colors.black),
              ),
              Text(
                  "saisissez un email valide ainsi qu'un mot de pass secret afin dencréer votre compte"),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              regirectedController()
            ],
          ),
        ),
      ),
    );
  }
}
