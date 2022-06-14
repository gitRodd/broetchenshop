import 'package:flutter/material.dart';

class FavoriteItems extends StatefulWidget {
  const FavoriteItems({Key? key}) : super(key: key);

  @override
  State<FavoriteItems> createState() => _FavoriteItemsState();
}

class _FavoriteItemsState extends State<FavoriteItems> {
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
            width: MediaQuery.of(context).size.width,
            height: 50,
            child:
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    child: CircleAvatar(
                      maxRadius: 80,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: 70,
                        height: 50,
                        child: Image.asset("assets/product/wurstsemmel.jpg"),
                      ),
                    ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Text("Schnitzel Semmel"),
                      Text("Price 1,90€"),
                    ],
                  ),),
                  IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.delete)),

                ],
              ),
            )
            ,
          ),
        ));
  }
}
