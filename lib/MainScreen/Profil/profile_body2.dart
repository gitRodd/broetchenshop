import 'package:broetchenshop/AppTheme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

import '../../AppTheme/config.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  bool isSwitched = MyTheme.isDark;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          child: SettingsList(
            sections: [
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Contact details',
                titleTextStyle: const TextStyle(color: Color.fromRGBO(0, 110, 199, 1), fontSize: 14),
                tiles: [
                  SettingsTile(
                    title: 'Name',
                    subtitle: 'Max Mustermann',
                    leading: const Icon(Icons.person),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Mobile number',
                    subtitle: '01234567',
                    leading: const Icon(Icons.numbers),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'E-Mail',
                    subtitle: 'max.mustermann@gmail.com',
                    leading: const Icon(Icons.mail),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Date of birth',
                    subtitle: '01.01.00',
                    leading: const Icon(Icons.date_range),
                    onPressed: (BuildContext context) {},
                  ),
                ],
              ),
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'App settings',
                titleTextStyle: const TextStyle(color: Color.fromRGBO(0, 110, 199, 1), fontSize: 14),
                tiles: [
                  SettingsTile(
                    title: 'Language',
                    subtitle: 'English',
                    leading: const Icon(Icons.language),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile.switchTile(
                    title: 'Appearance',
                    leading: const Icon(Icons.phone_android),
                    switchValue: isSwitched,
                    onToggle: (value) {
                      setState(() {
                        isSwitched = value;
                        currentTheme.switchTheme();
                      });
                    },
                  ),
                ],
              ),
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Privacy',
                titleTextStyle: const TextStyle(color: Color.fromRGBO(0, 110, 199, 1), fontSize: 14),
                tiles: [
                  SettingsTile(
                    title: 'Security',
                    titleTextStyle: Theme.of(context).textTheme.bodyText1,
                    leading: const Icon(Icons.lock),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: "Datenschutz",
                    titleTextStyle: Theme.of(context).textTheme.bodyText1,
                    leading: const Icon(Icons.lock),
                    onPressed: (context){

                    },
                  )
                ],
              ),
            ],
          ),
    );
  }
}
