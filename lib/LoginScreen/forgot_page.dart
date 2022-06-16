import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import '../Help/design_content.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  void dispose(){
    emailController.dispose();
    super.dispose();
  }

  Future verifyEmail() async {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      )
    );

    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailController.text.trim());
      Navigator.of(context).popUntil((route) => route.isFirst);
      //Utils.showSnackBar('Password Reset Email Sent');
    }on FirebaseAuthException catch(e){
      print(e);
      //Utils.showSnackBar(e.message);
      Navigator.of(context).pop();
    }

  }

  void printMSG() {
    print('Elevated Button Clicked...');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),

              SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Reset your password',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 30.0
                      ),
                      SizedBox(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: kBoxDecorationStyle,
                          height: 60.0,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.done,
                            validator: (email){
                              if(!emailRegex.hasMatch(email!)){
                                return 'Please enter valid email';
                              }
                            },
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              hintText: 'Enter your Email',
                              hintStyle: kHintTextStyle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: const EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: verifyEmail,

                      child: const Text(
                        'Send request',
                        style: TextStyle(
                          color: Color(0xFF527DAA),
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
