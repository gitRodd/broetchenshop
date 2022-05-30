import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../../AppTheme/config.dart';

class AppearanceSettings extends StatefulWidget {
  const AppearanceSettings({Key? key}) : super(key: key);

  @override
  State<AppearanceSettings> createState() => _AppearanceSettingsState();
}

class _AppearanceSettingsState extends State<AppearanceSettings> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Erscheinungsbild",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "Das Erscheinungsbild für die Oberfläche",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Expanded(
                    child: Text(
                      "Appearance",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(
                    child: FlutterSwitch(
                      value: status,
                      onToggle: (bool value) {
                        setState(() {
                          status = value;
                          currentTheme.switchTheme();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  currentTheme.switchTheme();
                },
                child: Icon(
                    Icons.ac_unit
                ),

              ),
            )
          ],
        ),
      )),
      );
  }
}
