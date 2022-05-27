import 'package:broetchenshop/AppTheme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../AppTheme/config.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Expanded(
                      child: Text("Appearance", style: Theme.of(context).textTheme.bodyText2,),
                  ),
                  ElevatedButton(
                      onPressed: ()async{
                        currentTheme.switchTheme();
                      },
                      child: const Icon(
                        Icons.account_box_rounded
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
