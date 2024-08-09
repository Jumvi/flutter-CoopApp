import 'package:firstapp/screen/sing_in/components/textForm.dart';
import 'package:firstapp/screen/splash/components/default_button.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingInFormulair extends StatefulWidget {
  const SingInFormulair({super.key});

  @override
  State<SingInFormulair> createState() => _SingInFormulairState();
}

class _SingInFormulairState extends State<SingInFormulair> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            textFormField(
                "Email", "Entrez votre Email", "assets/icons/mail.svg",
                controller: _emailController),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            textFormField("Mot de pass", "Entrer votre mot de pass",
                "assets/icons/password.svg",
                controller: _passwordController),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                SvgPicture.asset("assets/icons/Error.svg"),
                Text('Erreur lors de la connexion'),
              ],
            ),
            DefaultButton(
                press: () {
                  if (_formKey.currentState!.validate()) {
                    final email = _emailController.text;
                    final password = _passwordController.text;

                    //suppression après soumission
                    _emailController.clear();
                    _passwordController.clear();

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('donnée de votre connexion'),
                        content:
                            Text('Email:${email} et mot de pass: ${password}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              //suppression après soumission
                              _emailController.clear();
                              _passwordController.clear();
                            },
                            child: Text('Quitter'),
                          )
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Erreur lors de la connexion'),
                        content: Text('mot de pass ou email incorrect'),
                        //suppression après soumission
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Quitter'),
                          )
                        ],
                      ),
                    );
                  }
                },
                text: 'se connecter')
          ],
        ),
      ),
    );
  }
}
