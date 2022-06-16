import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:broetchenshop/LoginScreen/login_screen.dart';
import 'package:broetchenshop/Registration/registration_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) =>
      isLogin ? MainLoginScreen(onClickedSignUp: toggle,) : RegistrationPage(onClickedSignIn: toggle);

  void toggle(){
    setState((){
      isLogin = !isLogin;
    });
  }
}
