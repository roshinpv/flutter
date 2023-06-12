import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_one/features/auth/presentation/pages/sign_in_page.dart';
import 'package:ui_one/features/auth/presentation/pages/sign_up_page.dart';

import '../components/buttons.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              width: 100,
              height: 150,
            ),

            
            const Center(
              child: Text(
                "Sample App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  color: Color.fromRGBO(211, 15, 15, 1),
                ),  
              ),
            ),
            const SizedBox(
              width: 100,
              height: 100,
            ),
            const Center(
              child: Text(
                "Welcome back!\nSign in to continue!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 100,
              height: 100,
            ),
            const Column(
              children: [
                
                SizedBox(height: 20),
                
                SizedBox(height: 20),
                
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  text: "Sign up with email",
                ),
                const SizedBox(height: 20),
                  
                const SizedBox(height: 77),
                const Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF383838),
                    letterSpacing: 0.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 27 ),
                RichText(
                  text: TextSpan(
                    text: "Sign in",
                    style: const TextStyle(
                      color: Color(0xFF265AE8),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignInPage.id);
                      },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
