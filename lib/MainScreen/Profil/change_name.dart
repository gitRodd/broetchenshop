import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  final formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void dispose(){
    firstnameController.dispose();
    lastnameController.dispose();
    super.dispose();
  }

  Future updateName() async {
    try {
      user.updateDisplayName(
          firstnameController.text.trim() + lastnameController.text.trim());
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(user.displayName.toString()),
                  Row(
                    children: [
                      TextFormField(
                        controller: firstnameController,
                      ),
                      TextFormField(
                        controller: lastnameController,
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: updateName,
                      child: const Text("Change"))
                ],
              ),
            )
        )
    );
  }
}
