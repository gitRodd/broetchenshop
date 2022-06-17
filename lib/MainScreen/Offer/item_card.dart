import 'package:flutter/material.dart';
import 'package:broetchenshop/MainScreen/Favorite/favorite_content.dart' as fav;

class ItemCart extends StatefulWidget {
  const ItemCart({Key? key}) : super(key: key);

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  Color iconcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
      elevation: 40,
      shadowColor: Theme.of(context).primaryColor,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                child: Row(
              children: [
                const Expanded(
                    child: Center(
                  child: Text(""),
                )),
                SizedBox(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (iconcolor == Colors.white) {
                            iconcolor = Colors.red;

                          } else if (iconcolor == Colors.red) {
                            iconcolor = Colors.white;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: iconcolor,
                      )),
                )
              ],
            )),
            SizedBox(
                height: 80.0,
                child: Center(
                  child: CircleAvatar(
                    maxRadius: 100,
                    backgroundColor: Colors.white,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset("assets/product/wurstsemmel.jpg"),
                    ),
                  ),
                )),
            ListTile(
              title: const Text("Euro/Stück"),
              subtitle: const Text("Muster"),
              trailing: IconButton(
                  onPressed: (){

                  },
                  icon: const Icon(Icons.add_shopping_cart),
              )
            )
          ],
        ),
      ),
    ));
  }
}
