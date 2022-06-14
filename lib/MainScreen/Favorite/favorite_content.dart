import 'package:broetchenshop/MainScreen/Favorite/favorite_items.dart';
import 'package:flutter/material.dart';
import '../../Model/Product.dart';

class FavoriteContent extends StatefulWidget {
  const FavoriteContent({Key? key}) : super(key: key);

  @override
  State<FavoriteContent> createState() => _FavoriteContentState();
}

class _FavoriteContentState extends State<FavoriteContent> {
  final List<Product> productList = [];

  @override
  Widget build(BuildContext context) {
        return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: FavoriteItems(),
                )




    );
  }
}
