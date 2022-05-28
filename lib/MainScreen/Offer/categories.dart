import 'package:flutter/material.dart';

import '../../Help/design_content_login_reg.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 80,
            decoration: kBoxDecorationStyle,
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: Row(
                  children: const [
                    SizedBox(
                        width: 20
                    ),
                    Padding(
                        padding: EdgeInsets.all(2)
                    ),
                    Expanded(
                      child: Text("All"),
                    ),
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: kBoxDecorationStyle,
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: Row(
                  children: const [
                    SizedBox(
                        width: 20
                    ),
                    Padding(
                        padding: EdgeInsets.all(2)
                    ),
                    Expanded(
                        child: Text("Brot")),
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: kBoxDecorationStyle,
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: Row(
                  children: const [
                    SizedBox(
                        width: 20
                    ),
                    Padding(
                        padding: EdgeInsets.all(2)
                    ),
                    Expanded(
                        child: Text("Brötchen")
                    ),
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: kBoxDecorationStyle,
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                        width: 20
                    ),
                    const Padding(
                        padding: EdgeInsets.all(2)
                    ),
                    Expanded(
                        child: Text("Süßes", style: Theme.of(context).textTheme.bodyText1,)
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
