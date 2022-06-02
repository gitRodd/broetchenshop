import 'package:broetchenshop/MainScreen/Profil/profie_pic.dart';
import 'package:flutter/material.dart';

import '../../AppTheme/config.dart';
import '../../Help/design_content.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget> [
          const Center(
            child: ProfilePic(),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          const Padding(padding: EdgeInsets.all(10)),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0xFFF5F6F9),
              ),
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 20),
                  Expanded(child: Text("Profile")),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
          ),
          const Padding(padding: EdgeInsets.all(10)),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0xFFF5F6F9),

              ),
              onPressed: (){

              },
              child: Row(
                children: const [
                  Icon(Icons.settings),
                  SizedBox(width: 20),
                  Expanded(child: Text("Settings")),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
          ),
          const Padding(padding: EdgeInsets.all(10)),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Colors.white,

              ),
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(Icons.help_center),
                  SizedBox(width: 20),
                  Expanded(child: Text("Help Center")),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
          ),
          const Padding(padding: EdgeInsets.all(10)),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0xFFF5F6F9),
              ),
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(Icons.logout),
                  SizedBox(width: 20),
                  Expanded(child: Text("Logout")),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            decoration: kBoxDecorationStyle,
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style,
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(Icons.help_center),
                  SizedBox(width: 20),
                  Expanded(child: Text("Help Center")),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ),
          )

        ],
      ),
    );
  }
}
