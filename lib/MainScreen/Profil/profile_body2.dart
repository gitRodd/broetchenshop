import 'package:broetchenshop/AppTheme/app_theme.dart';
import 'package:broetchenshop/LoginScreen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  final user = FirebaseAuth.instance.currentUser!;
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
                    titleTextStyle: const TextStyle(fontSize: 16),
                    subtitle: user.displayName,
                    subtitleTextStyle: Theme.of(context).textTheme.subtitle1,
                    leading: const Icon(Icons.person),
                    onPressed: (BuildContext context) {

                    },
                  ),
                  SettingsTile(
                    title: 'Mobile number',
                    titleTextStyle: const TextStyle(fontSize: 16),
                    subtitle: '01234567',
                    subtitleTextStyle: Theme.of(context).textTheme.subtitle1,
                    leading: const Icon(Icons.numbers),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'E-Mail',
                    titleTextStyle: const TextStyle(fontSize: 16),
                    subtitle: user.email!,
                    subtitleTextStyle: Theme.of(context).textTheme.subtitle1,
                    leading: const Icon(Icons.mail),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Date of birth',
                    titleTextStyle: const TextStyle(fontSize: 16),
                    subtitle: '01.01.00',
                    subtitleTextStyle: Theme.of(context).textTheme.subtitle1,
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
                    titleTextStyle: const TextStyle(fontSize: 16),
                    subtitle: 'English',
                    subtitleTextStyle: Theme.of(context).textTheme.subtitle1,
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
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Logout',
                titleTextStyle: const TextStyle(color: Color.fromRGBO(0, 110, 199, 1), fontSize: 14),
                tiles: [
                  SettingsTile(
                    title: "Logout",
                    titleTextStyle: Theme.of(context).textTheme.bodyText1,

                    leading: const Icon(Icons.logout),
                    onPressed: (context) => FirebaseAuth.instance.signOut(),
    /*onPressed: (context){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainLoginScreen()));
                      },*/
                  )
                ],
              )
            ],
          ),
    );
  }
}
