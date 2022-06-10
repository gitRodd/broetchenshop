import 'dart:ffi';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

import '../../Help/design_content.dart';

class SearchbarArea extends StatefulWidget {
  const SearchbarArea({Key? key}) : super(key: key);

  @override
  State<SearchbarArea> createState() => _SearchbarAreaState();
}

class _SearchbarAreaState extends State<SearchbarArea> {
  TextEditingController textController = TextEditingController();

  Icon iconup = const Icon(Icons.list);
  Icon icondown = const Icon(Icons.view_list);
  List<Icon> iconlist = [];
  Icon selectedIcon =  const Icon(Icons.line_weight_sharp);



  @override
  void initState(){
    super.initState();
    iconlist = [iconup, icondown];
  }

  void choiceAction(Icon choice) {
    setState((){
      if (choice == iconup) {
        selectedIcon = iconup;
      } else if (choice == icondown) {
        selectedIcon = icondown;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: AnimSearchBar(
            textController: textController,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColorLight,
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
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,//const Color(0xFF6CA8F1),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: PopupMenuButton<Icon>(
            icon: selectedIcon,
            onSelected: choiceAction,
            color: Theme.of(context).primaryColor,
            itemBuilder: (BuildContext context) {
              return iconlist.map((Icon choice) {
                return PopupMenuItem<Icon>(
                  value: choice,
                  child: choice,
                );
              }).toList();
            },
          ),

        ),
      ],
    );
  }
}
