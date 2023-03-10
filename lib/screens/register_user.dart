import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:contact_tracing/constants/style_constants.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RegisterUserScreen extends StatelessWidget {
  const RegisterUserScreen({super.key});

  void registerUser(BuildContext context) async {
    //create user firebase_auth

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'a2@g.com', password: 'password123');
    EasyLoading.showSuccess('User account has been created');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black45),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/illustration.webp',
            ),
            alignment: Alignment.bottomCenter,
            opacity: 0.6,
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Enter the following details:'),
            ElevatedButton(
              onPressed: () {
                registerUser(context);
              },
              style: ElevatedButton.styleFrom(
                shape: roundedShape,
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
