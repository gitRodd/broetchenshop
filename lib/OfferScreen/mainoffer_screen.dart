import 'package:badges/badges.dart';
import 'package:broetchenshop/SideNavBar/Sidebar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainOfferScreen extends StatefulWidget {
  const MainOfferScreen({Key? key}) : super(key: key);

  @override
  State<MainOfferScreen> createState() => _MainOfferScreenState();
}

class _MainOfferScreenState extends State<MainOfferScreen> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initStat(){
    super.initState();
    _page = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const Sidebar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            top: Radius.circular(30),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const <Widget>[
                  /*TextField(
                    /*decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.lightBlueAccent
                    ),*/
                  ),*/
                  SizedBox(
                    child: Icon(
                      Icons.search
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            const Icon(Icons.list, size: 30),
            const Icon(Icons.access_time_outlined, size: 30),
            Badge(
              badgeContent: const Text("2"),
              child: const Icon(Icons.shopping_cart),
            )
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
