import 'package:flutter/material.dart';

import '../../Help/design_content.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Color selectedCategories = Colors.green;

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
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,//Colors.grey,//const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: SizedBox(
                        child: Text("All",
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,),
                    ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,//Colors.grey,//const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: SizedBox(
                        child: Text(
                          "Bread",
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,)
                    ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,//Colors.grey,//const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: SizedBox(
                        child: Text(
                          "Rolls",
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        )
                    ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,//Colors.grey,//const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {},
                child: SizedBox(
                        child: Text(
                          "Sweets",
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        )
                    ),

            ),
          ),
        ],
      ),
    );
  }
}
