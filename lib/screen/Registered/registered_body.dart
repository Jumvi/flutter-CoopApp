import 'package:firstapp/screen/Registered/componets/regirected_formulaire.dart';
import 'package:firstapp/screen/splash/components/body.dart';
import 'package:flutter/material.dart';

class RegisteredBody extends StatelessWidget {
  const RegisteredBody({super.key});

  static String routeName = '/create_acoumpt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sing up'),
      ),
      backgroundColor: Colors.white,
      body: RegirectedFormulaire(),
    );
  }
}
