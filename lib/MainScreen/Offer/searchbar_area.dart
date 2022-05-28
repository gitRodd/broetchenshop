import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

import '../../Help/design_content_login_reg.dart';

class SearchbarArea extends StatefulWidget {
  const SearchbarArea({Key? key}) : super(key: key);

  @override
  State<SearchbarArea> createState() => _SearchbarAreaState();
}

class _SearchbarAreaState extends State<SearchbarArea> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: AnimSearchBar(
            textController: textController,
            width: MediaQuery.of(context).size.width,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          padding: const EdgeInsets.all(2),
          width: 60,
          decoration: kBoxDecorationStyle,
          child: TextButton(
              style: Theme.of(context).textButtonTheme.style,
              onPressed: () {},
              child: const Icon(Icons.menu_open)
          ),
        ),
      ],
    );
  }
}
