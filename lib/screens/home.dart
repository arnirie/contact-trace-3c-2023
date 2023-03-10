import 'package:contact_tracing/screens/register_establishment.dart';
import 'package:contact_tracing/screens/register_user.dart';
import 'package:contact_tracing/constants/style_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              alignment: Alignment.bottomCenter,
              opacity: 0.5,
            ),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Trace',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'ContactTrace is a mobile app designed for tracing the travel history of users within MAD class.',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 22,
              ),
              const Text('Welcome! Please choose to Sign In or Sign Up'),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: roundedShape,
                  ),
                  child: const Text('Login'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const RegisterUserScreen(),
                      )),
                  style: OutlinedButton.styleFrom(
                    shape: roundedShape,
                    backgroundColor: Colors.white70,
                  ),
                  child: const Text('Sign Up as Client'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const RegisterEstablishmentScreen(),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: roundedShape,
                    backgroundColor: Colors.white70,
                  ),
                  child: const Text('Sign Up as Establishment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
