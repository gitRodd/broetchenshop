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
  String dropdownValue = 'One';
  static const String firstItem = 'First Item';
  static const String secondItem = 'Second Item';
  static const String thirdItem = 'Third Item';

  Icon iconup = Icon(Icons.arrow_upward);
  Icon icondown = Icon(Icons.arrow_downward);
  List<Icon> iconlist = [];

  static const List<String> choices = <String>[
    firstItem,
    secondItem,
  ];

  @override
  void initState(){
    super.initState();
    iconlist = [iconup, icondown];
  }

  void choiceAction(Icon choice) {
    if (choice == iconup) {
      print('I First Item');
    } else if (choice == icondown) {
      print('I Second Item');
    }
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
            icon: const Icon(Icons.settings),
            onSelected: choiceAction,
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
/*TextButton(
style: Theme.of(context).textButtonTheme.style,
onPressed: () {},
child: const Icon(Icons.menu_open)
),*/
/*DropdownButton<String>(
value: dropdownValue,
elevation: 16,
style: TextStyle(color: Theme.of(context).primaryColorDark),
onChanged: (String? newValue) {
setState(() {
dropdownValue = newValue!;
});
},
items: <String>['One', 'Two', 'Free', 'Four']
.map<DropdownMenuItem<String>>((String value) {
return DropdownMenuItem<String>(
value: value,
child: Text(value),
);
}).toList(),
),*/