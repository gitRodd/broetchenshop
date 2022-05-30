import 'package:badges/badges.dart';
import 'package:broetchenshop/MainScreen/Profil/profil.dart';
import 'package:broetchenshop/MainScreen/Cart/cart.dart';
import 'package:broetchenshop/MainScreen/Favorite/favorites.dart';
import 'package:broetchenshop/MainScreen/Offer/offer_content.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainOfferScreen extends StatefulWidget {
  const MainOfferScreen({Key? key}) : super(key: key);

  @override
  State<MainOfferScreen> createState() => _MainOfferScreenState();
}

class _MainOfferScreenState extends State<MainOfferScreen> {
  int page = 0;
  List<Widget> tabs = [const OfferContent(), const Favorite(), const Cart(), const Profile()];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  void initStat(){
    super.initState();
    page = 0;
    tabs = [const OfferContent(), const Favorite(), const Cart(), const Profile()];

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: tabs[page],
        ),
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
            Icon(Icons.person, size: 30, color: Theme.of(context).iconTheme.color,)
          ],
          color: Theme.of(context).primaryColor,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).backgroundColor,
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
