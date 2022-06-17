import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  final Image productImage;
  final String productName;
  final String productCount;
  final String productPrice;

  const Items({Key? key,
    required this.productImage,
    required this.productName,
    required this.productCount,
    required this.productPrice}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-2,
      height: 80,
      child: Row(
        children: <Widget>[

        ],
      )
    );
  }
}
