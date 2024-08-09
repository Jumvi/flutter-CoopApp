import 'package:firstapp/screen/sing_in/components/body_connexion.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  static String routeName = "/sing_in";
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Connexion',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        centerTitle: true,
      ),
      body: BodyConnexion(),
    );
  }
}
