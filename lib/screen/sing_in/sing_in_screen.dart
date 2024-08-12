import 'package:firstapp/screen/sing_in/components/body_connexion.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  static String routeName = "/sing_in";
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Se connecter',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(35),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 242, 242),
      body: BodyConnexion(),
    );
  }
}
