import 'package:castleshopp/components/components.customprogress.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
    Duration(seconds: 5), () {
        if(mounted){
          Navigator.pushNamed(context, '/onboarding');
        }

    }
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Container(
        width: double.infinity,
        height: double.infinity,
        child: 
        Column(
          children: [
          Image.asset("../assets/images/logo1.png"),
          CustomCircularProgressBar()
          ],
        )
      )
     
     ),

    );
  }
}