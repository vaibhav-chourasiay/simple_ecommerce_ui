import 'package:ecommerce_ui/constants_value.dart';
import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/screens/show_detail.dart';
import 'package:ecommerce_ui/widgets/appbar_.dart';
import 'package:ecommerce_ui/widgets/category_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Column(
        children: [
          Category_Show(),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (MediaQuery.of(context).size.width > 500) ? 5 : 2,
                  crossAxisSpacing: defualtPadding,
                  mainAxisSpacing: defualtPadding,
                  mainAxisExtent: 200.0,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowDetails(
                              detail: products[index],
                            ),
                          ),
                        );
                      },
                      child: app_cards(index, context));
                },
                itemCount: products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container app_cards(int index, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: products[index].color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Hero(
                    tag: Key(products[index].id.toString()),
                    child: Image.asset(
                      products[index].image.toString(),
                      width: (MediaQuery.of(context).size.width > 500)
                          ? 200.0
                          : 100.0,
                      height: 150.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${products[index].title}",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
