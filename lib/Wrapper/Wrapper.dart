import 'package:broetchenshop/LoginScreen/auth_page.dart';
import 'package:broetchenshop/LoginScreen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../MainScreen/Offer/mainoffer_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center( child: CircularProgressIndicator(),);
          }else if( snapshot.hasError){
            return const Center(child: Text("Something went wrong"),);
          } else if(snapshot.hasData){
            return const MainOfferScreen();
          } else{
            return const AuthPage();
          }
        },
      ),
    );
  }
}
