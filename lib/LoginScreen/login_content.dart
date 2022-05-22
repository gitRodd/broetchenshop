import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              child: Text("Sign In",
              style: TextStyle(color: Colors.white, fontFamily: 'OpenSans', fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.0,),

          ],
        ),
      ),
    );
  }
}
