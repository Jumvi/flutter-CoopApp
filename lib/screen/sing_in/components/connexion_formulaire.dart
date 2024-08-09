import 'package:firstapp/screen/sing_in/components/textForm.dart';
import 'package:firstapp/screen/splash/components/default_button.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class SingInFormulair extends StatefulWidget {
  const SingInFormulair({super.key});

  @override
  State<SingInFormulair> createState() => _SingInFormulairState();
}

class _SingInFormulairState extends State<SingInFormulair> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            textFormField(
                "Email", "Entrez votre Email", "assets/icons/mail.svg"),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            textFormField("Mot de pass", "Entrer votre mot de pass",
                "assets/icons/password.svg"),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DefaultButton(press: () {}, text: 'se connecter')
          ],
        ),
      ),
    );
  }
}
