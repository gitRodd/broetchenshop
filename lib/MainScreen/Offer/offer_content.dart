import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:broetchenshop/MainScreen/Offer/categories.dart';
import 'package:broetchenshop/MainScreen/Offer/searchbar_area.dart';
import 'package:flutter/material.dart';

class OfferContent extends StatefulWidget {
  const OfferContent({Key? key}) : super(key: key);

  @override
  State<OfferContent> createState() => _OfferContentState();
}

class _OfferContentState extends State<OfferContent> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      /*appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
          top: Radius.circular(30),
        )),
      ),*/
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SearchbarArea(),
            const Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headline5,
                  )),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View all",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline,
                            fontSize: 20)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const SizedBox(
              child: Categories()
            )
          ],
        ),
      ),
    ));
  }
}
