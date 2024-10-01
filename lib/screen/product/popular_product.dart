import 'package:flutter/material.dart';
import 'package:firstapp/size_config.dart';

class PopularCard extends StatefulWidget {
  final String path;
  final int prix;
  final String type;
  final String couleur;

  const PopularCard(
      {Key? key,
      required this.path,
      required this.prix,
      required this.type,
      required this.couleur})
      : super(key: key);

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
          color: const Color.fromARGB(255, 242, 238, 238),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(20),
        height: getProportionateScreenHeight(_isHovered ? 215 : 210) +
            5, // Ajustez ici
        width: getProportionateScreenWidth(_isHovered ? 220 : 200),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              SizedBox(
                child: Card(
                  child: Image.asset(
                    widget.path,
                    height: getProportionateScreenHeight(_isHovered ? 100 : 90),
                    width: getProportionateScreenWidth(_isHovered ? 220 : 200),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                widget.type,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              // Prix du produit
              Text(
                "\$${widget.prix}", // ou autre symbole de devise
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 5),
              // Couleur du produit
              Row(
                children: [
                  const Text(
                    "Couleur : ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: _getColorFromString(widget.couleur),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fonction utilitaire pour convertir le nom de la couleur en une vraie couleur Flutter
  Color _getColorFromString(String couleur) {
    switch (couleur.toLowerCase()) {
      case 'rouge':
        return Colors.red;
      case 'bleu':
        return Colors.blue;
      case 'vert':
        return Colors.green;
      case 'jaune':
        return Colors.yellow;
      case 'noir':
        return Colors.black;
      case 'blanc':
        return Colors.white;
      default:
        return Colors
            .grey; // Couleur par défaut si la couleur n'est pas reconnue
    }
  }
}
