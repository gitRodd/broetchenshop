import 'package:broetchenshop/MainScreen/Profil/profie_pic.dart';
import 'package:broetchenshop/MainScreen/Profil/profile_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: ProfileBody(),
    );
  }
}
