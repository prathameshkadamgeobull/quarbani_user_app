import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarbani_user_app/features/onboarding/presentation/pages/onboarding_page.dart';
// import '../../../login/bloc/login_bloc.dart';
// import '../../../login/presentation/pages/login_page.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B3D2E),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 320,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0D4B38),
                  Color(0xFF06281F),
                ],
              ),
              border: Border.all(
                color: Color(0xFFF4C95D),
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              children: [
                const Spacer(),

                const SizedBox(height: 20),

                Image.asset(
                  "assets/logo/qurbani_logo.png",
                  height: 370,
                ),

                const SizedBox(height: 25),

                const Text(
                  "Fulfill your Sunnah\nwith Trust & Transparency",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF4C95D),
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Trusted • Verified • Transparent",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),

                const Spacer(),

                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingPage(),
                          ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4C95D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.white70,
                      size: 18,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "English",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white70,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}