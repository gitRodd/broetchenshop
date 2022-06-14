import 'package:broetchenshop/MainScreen/Cart/confirm_section.dart';
import 'package:flutter/material.dart';

import 'cart_items.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        automaticallyImplyLeading: false,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
          top: Radius.circular(30),
        )),
      ),
      body: SizedBox(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Center(
                  child: CardItems(),
                )

              )
            ),
            Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ConfirmSection(),
              ),
            )
          ],
        ),
      )),
    ));
  }
}
