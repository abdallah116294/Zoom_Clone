import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

import '../screens/login_screen.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp _instnce = MyApp._internal();
  factory MyApp() => _instnce;
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      routes: {
        LoginScreen.rootName:(context)=>const  LoginScreen()
      }, 
      home: const LoginScreen(),
    );
  }
}
