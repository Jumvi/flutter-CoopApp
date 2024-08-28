import 'package:flutter/material.dart';
import 'package:firstapp/size_config.dart';

class PopularCard extends StatefulWidget {
  final String path;

  const PopularCard({Key? key, required this.path}) : super(key: key);

  @override
  _PopularCardState createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 237, 237),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(20),
        height: getProportionateScreenHeight(_isHovered ? 220 : 200),
        width: getProportionateScreenWidth(_isHovered ? 220 : 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: Card(
                child: Image.asset(
                  widget.path,
                  height: getProportionateScreenHeight(_isHovered ? 150 : 130),
                  width: getProportionateScreenWidth(_isHovered ? 220 : 200),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
