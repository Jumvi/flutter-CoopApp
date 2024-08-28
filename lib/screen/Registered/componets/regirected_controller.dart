import 'package:firstapp/screen/product/bottom_navigation.dart';
import 'package:firstapp/screen/product/landing.dart';
import 'package:firstapp/screen/sing_in/components/textForm.dart';
import 'package:firstapp/screen/splash/components/default_button.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class regirectedController extends StatefulWidget {
  const regirectedController({super.key});

  @override
  State<regirectedController> createState() => _regirectedControllerState();
}

class _regirectedControllerState extends State<regirectedController> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmePasseword = TextEditingController();
  bool boxState = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            textFormField(
                'Email', 'entrez votre email', "assets/icons/mail.svg",
                controller: _emailController),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            textFormField('mot de pass', 'Entrez mot de pass',
                "assets/icons/password.svg",
                controller: _passwordController),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            textFormField('confirmation', 'confirmer mot de pass',
                "assets/icons/password.svg",
                controller: _confirmePasseword),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
                press: () {
                  if (_formKey.currentState!.validate()) {
                    final email = _emailController.text;
                    final motDepass = _passwordController.text;
                    final confirmPass = _confirmePasseword.text;

                    _emailController.clear();
                    _passwordController.clear();
                    _confirmePasseword.clear();

                    if (motDepass == confirmPass) {
                      Navigator.pushNamed(context, BottomWidget.routeName);
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('mot de pass différents'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Quitter')),
                                ],
                              ));
                    }
                  }
                },
                text: 'Créer compte'),
          ],
        ),
      ),
    );
  }
}
