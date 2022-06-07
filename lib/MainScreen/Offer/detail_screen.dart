import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: const <Widget>[
          CircleAvatar(

          ),
          ListTile(
            title: Text("Muster"),
            subtitle: Text("Muster"),
          ),
          Icon(
            Icons.delete
          )
        ],
      ),
    );
  }
}
