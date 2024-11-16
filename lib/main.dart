import 'package:flutter/material.dart';
import 'package:sign_up/screens/welcome_screen.dart';
import 'package:sign_up/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

    //  theme: ThemeData(
         theme : lightMode,

      
   //   ),

      home:  const WelcomeScreen(),     // Welcome screen is displayed first
    );
  }
}
