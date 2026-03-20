import 'package:castleshopp/screens/onboarding/screens.onboarding.dart';
import 'package:castleshopp/screens/basescaffold/screens.home.dart';
import 'package:castleshopp/screens/basescaffold/screens.settings.dart';
import 'package:castleshopp/screens/basescaffold/screens.shopping.dart';
import 'package:castleshopp/screens/screens.splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String path = ' http:localhost:3000/';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins.toString()
      ),
      initialRoute: '/splash',
      routes: {
        '/splash':(context)=> SplashScreen(),
        '/onboarding': (context)=> OnBoarding1(),
        '/home': (context) => HomePage(),
        '/settings': (context)=> SettingsPage(),
        '/shopping': (context)=> ShoppingPage()
      },
     
    );
  }
}

