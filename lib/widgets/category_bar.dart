import 'package:ecommerce_ui/constants_value.dart';
import 'package:flutter/material.dart';

class Category_Show extends StatefulWidget {
  const Category_Show({Key? key}) : super(key: key);

  @override
  _Category_ShowState createState() => _Category_ShowState();
}

class _Category_ShowState extends State<Category_Show> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        child: Text(
                          category[index],
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: (selectedIndex == index)
                                      ? Colors.black
                                      : textColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 30.0,
                        height: 3.0,
                        margin: const EdgeInsets.only(top: 1.0),
                        color:
                            (selectedIndex == index) ? Colors.black : textColor,
                      ),
                    ],
                  ),
                );
              },
              itemCount: category.length,
            ),
          )
        ],
      ),
    );
  }
}
