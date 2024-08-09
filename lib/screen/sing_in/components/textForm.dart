import 'package:firstapp/constants.dart';
import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

TextFormField textFormField(
  String label,
  String hint,
  String picture, {
  required TextEditingController controller,
}) {
  final List<String> errors = [];
  bool isObscure = label.toLowerCase() == 'mot de pass';

  return TextFormField(
    controller: controller,
    obscureText: isObscure,
    keyboardType: label.toLowerCase() == 'email'
        ? TextInputType.emailAddress
        : TextInputType.text,
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
    validator: (value) {
      // Check if value is null or empty
      if (value == null || value.isEmpty) {
        errors.add("mot de pass ou email incorrect");
        return "mot de pass ou email incorrect"; // Returning error message
      }
      return null; // Return null if validation is successful
    },
  );
}
