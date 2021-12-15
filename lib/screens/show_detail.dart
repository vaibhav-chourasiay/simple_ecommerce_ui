import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/detail_body.dart';
import 'package:ecommerce_ui/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowDetails extends StatefulWidget {
  final Product detail;

  const ShowDetails({Key? key, required this.detail}) : super(key: key);

  @override
  _ShowDetailsState createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.detail.color,
      appBar: second_appbar(context),
      body: DetailBody(details: widget.detail),
    );
  }

  AppBar second_appbar(BuildContext context) {
    return AppBar(
      // actions buttons
      backgroundColor: widget.detail.color,
      actions: [
        if (MediaQuery.of(context).size.width > 500) searchBar(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/add_to_cart.svg",
            color: Colors.white,
          ),
        ),
        if (MediaQuery.of(context).size.width > 500)
          const SizedBox(
            width: 10.0,
          ),
      ],
    );
  }
}
