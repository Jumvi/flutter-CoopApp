import 'package:firstapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        height: getProportionateScreenHeight(50),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: searchFormField(controller: _searchController),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/basket-svgrepo-com.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"),
            ),
          ],
        ),
      ),
    );
  }
}

TextFormField searchFormField({required TextEditingController controller}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.black),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.black),
        gapPadding: 10,
      ),
      hintText: 'Search',
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
          'assets/icons/recherche.svg',
          width: getProportionateScreenWidth(18),
          height: getProportionateScreenHeight(18),
        ),
      ),
    ),
  );
}
