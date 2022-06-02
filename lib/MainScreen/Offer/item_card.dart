import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
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
                  child: Text("Muster"),
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
                    maxRadius: 50,
                    backgroundColor: Colors.white,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/bag_6.png"),
                    ),
                  ),
                )),
            const ListTile(
              title: Text("Muster"),
              subtitle: Text("Muster"),
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    ));
  }
}
