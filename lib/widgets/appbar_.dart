import 'package:ecommerce_ui/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appbar(context) {
  return AppBar(
    // leading back icon
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
      ),
    ),
    // actions buttons
    actions: [
      if (MediaQuery.of(context).size.width > 500) searchBar(),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: Colors.black,
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/add_to_cart.svg",
          color: Colors.redAccent,
        ),
      ),
      if (MediaQuery.of(context).size.width > 500)
        SizedBox(
          width: 10.0,
        ),
    ],
  );
}
