import 'package:flutter/material.dart';

class CardItems extends StatefulWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
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
                      maxRadius: 50,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: 70,
                        height: 70,
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
                  Column(
                    children: [
                      Text("Stück"),
                      Text("2"),
                    ],
                  ),
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
