import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/widget/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const rootName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Start or Join a meeting ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 38),
            child: Image(image: AssetImage("assets/images/onboarding.jpg")),
          ),
          CustomButton(
              text: "Google Sign in ",
              onPressed: () async {
                bool res = await authMethods.signInWithGoogle(context);
                if (res) {
                  if (!mounted) {
                    return;
                  }
                  Navigator.pushNamed(context, HomeScreen.rootName);
                }
              }),
        ],
      ),
    );
  }
}
