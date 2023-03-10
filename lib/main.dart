import 'package:contact_tracing/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:contact_tracing/screens/home.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

//!!!CONTACT TRACING APP
//TODO:
//!1: Registration a) user b) establishment
//2: Login a) user b) establishment
//3: QR code package
//3.a: generate QR code by user
//3.b: scan QR code by establishment
//4. View tracing

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ContactTrace());
}

class ContactTrace extends StatelessWidget {
  const ContactTrace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ),
          titleSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
          displaySmall: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white70,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}
