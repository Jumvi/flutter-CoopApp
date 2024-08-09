import 'package:firstapp/constants.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

TextFormField textFormField(String label, String hint, String picture) {
  return TextFormField(
    obscureText: true,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      labelText: label,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10),
      hintText: hint,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      suffixIcon: Padding(
        padding: EdgeInsets.fromLTRB(
          0,
          getProportionateScreenWidth(10),
          getProportionateScreenWidth(10),
          getProportionateScreenWidth(10),
        ),
        child: SvgPicture.asset(
          picture,
          width: getProportionateScreenWidth(18),
          height: getProportionateScreenHeight(18),
        ),
      ),
    ),
  );
}
