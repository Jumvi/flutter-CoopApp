import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';

class ProductListPub extends StatelessWidget {
  const ProductListPub({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            'Spécialement pour toi',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: getProportionateScreenHeight(90),
                  minHeight: getProportionateScreenHeight(80),
                ),
                child: Row(
                  children: [
                    Hovercard(
                        path: "assets/images/accessoires1.jpg",
                        title: "Accessoires"),
                    Hovercard(
                        path: "assets/images/appareilphoto.jpg",
                        title: "Electronics"),
                    Hovercard(
                        path: "assets/images/blouson1.jpg", title: "Vetements"),
                    Hovercard(
                        path: "assets/images/chemise1.jpg", title: "Vetements"),
                    Hovercard(
                        path: "assets/images/Electronic1.jpg",
                        title: "Electronic"),
                    Hovercard(
                        path: "assets/images/robe1.jpg", title: "Vetement"),
                    Hovercard(path: "assets/images/sport1.jpg", title: "Sport"),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Hovercard extends StatefulWidget {
  final String path;
  final String title;

  const Hovercard({super.key, required this.path, required this.title});

  @override
  State<Hovercard> createState() => _HovercardState();
}

class _HovercardState extends State<Hovercard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // MaterialPageRoute(builder: (context)=>())
      },
      child: MouseRegion(
        onEnter: (event) => _onHover(true),
        onExit: (event) => _onHover(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          margin:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
          width: _isHovered
              ? getProportionateScreenWidth(220)
              : getProportionateScreenWidth(200),
          height: _isHovered
              ? getProportionateScreenHeight(150)
              : getProportionateScreenHeight(120),
          child: buildCard(widget.path, widget.title),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

Widget buildCard(String path, String title) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            path,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(40),
          left: getProportionateScreenWidth(20),
          child: Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenHeight(20),
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
