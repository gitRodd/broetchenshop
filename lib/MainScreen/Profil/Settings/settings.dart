import 'package:broetchenshop/AppTheme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../AppTheme/config.dart';
import 'appearance_settings.dart';

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
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10)),
            Text("App-Einstellungen",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.left,
            ),const
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 40,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppearanceSettings()));
                },
                child: Row(
                  children:  [
                    const Icon(Icons.cloud),
                    const SizedBox(width: 20),
                    Expanded(child: Text("Appearance", style: Theme.of(context).textTheme.bodyText2,)),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

            const Divider(
              height: 20,
              thickness: 1,
              indent: 10,
              endIndent: 0,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
