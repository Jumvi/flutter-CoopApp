import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

SingleChildScrollView SingleChildScrollViewCard() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(12.0),
    child: Row(
      children: [
        imageContainer("assets/images/ElectronicImg.jpg"),
        imageContainer("assets/images/SportAccessoire.jpg"),
        imageContainer("assets/images/accessoireImg.jpg"),
        imageContainer("assets/images/vetementImg.jpg")
      ],
    ),
  );
}

Container imageContainer(String path) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(20),
        right: Radius.circular(20),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(20),
        right: Radius.circular(20),
      ),
      child: Opacity(
        opacity: 0.8, // Réglez l'opacité ici (0.0 - 1.0)
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          child: Image.asset(
            path,
            width: getProportionateScreenWidth(250),
            height: getProportionateScreenHeight(150),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
