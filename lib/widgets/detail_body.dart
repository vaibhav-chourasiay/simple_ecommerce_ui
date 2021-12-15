import 'package:ecommerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatefulWidget {
  final Product? details;

  const DetailBody({Key? key, this.details}) : super(key: key);
  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Stack(
        children: [
          // parent widget with size
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            // for white box in bottom area
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width,
                  height: size.height / 2,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40.0,
                        ),
                        // Other componets do it letter
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // first column
                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Color",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.black),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.yellowAccent,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.greenAccent,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            //second column

                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Size",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.black),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "23.0ft",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            child: Text(
                              "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without.",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Text("0"),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.minimize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.favorite_sharp,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Buy Now"),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    widget.details!.color,
                                  ),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // headline
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.details!.title.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.white54),
                ),
                RichText(
                  text: TextSpan(
                    text: "Awsome Bag!",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: size.height / 2 - 150.0,
                ),
                Text(
                  "Price",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.white54),
                ),
                RichText(
                  text: TextSpan(
                    text: widget.details!.price.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            right: 4.0,
            top: size.height / 3 - 100.0,
            child: Hero(
              tag: Key(widget.details!.id.toString()),
              child: Image.asset(
                widget.details!.image.toString(),
                width: 300.0,
                height: 250.0,
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
