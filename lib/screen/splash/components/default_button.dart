import 'package:firstapp/constants.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor, // Couleur de fond par défaut
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Forme par défaut
          ),
          padding: EdgeInsets.all(16), // Padding par défaut
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white, // Couleur du texte par défaut
          ),
        ),
      ),
    );
  }
}
