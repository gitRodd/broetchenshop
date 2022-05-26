import 'package:badges/badges.dart';
import 'package:broetchenshop/MainScreen/cart.dart';
import 'package:broetchenshop/MainScreen/favorites.dart';
import 'package:broetchenshop/MainScreen/offer_content.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainOfferScreen extends StatefulWidget {
  const MainOfferScreen({Key? key}) : super(key: key);

  @override
  State<MainOfferScreen> createState() => _MainOfferScreenState();
}

class _MainOfferScreenState extends State<MainOfferScreen> {
  int page = 0;
  List<Widget> tabs = [];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  void initStat(){

    page = 0;
    tabs = [const OfferContent(), const Favorite(), const Cart()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            top: Radius.circular(30),
          )),
        ),
        body: Container(),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            const Icon(Icons.home, size: 30),
            const Icon(Icons.favorite, size: 30),
            Badge(
              badgeContent: const Text("2"),
              child: const Icon(Icons.shopping_cart),
            ),
            const Icon(Icons.person, size: 30,)
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
