import 'package:anim_search_bar/anim_search_bar.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
          top: Radius.circular(30),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimSearchBar(
              textController: textController,
              width: MediaQuery.of(context).size.width,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            )
          ],
        ),
      ),
    ));
  }
}
