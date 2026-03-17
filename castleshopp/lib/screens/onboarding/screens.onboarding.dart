import 'package:castleshopp/components/components.navbutton.dart';
import 'package:castleshopp/components/text/components.customtitle.dart';
import 'package:castleshopp/components/text/components.description.dart';
import 'package:castleshopp/screens/auth/screens.login.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:  Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        Expanded(child: Image.asset("../assets/images/onboarding.png",width: double.infinity, fit: BoxFit.cover,),),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          child: Column(
            spacing: 10,
            children: [
            CustomTitle(title: "Change your lifestyle after it!"),
            CustomDescription(title: "A better place for you and your family!"),
            Divider(height: 2,thickness: 2,color: Colors.black,radius: BorderRadius.circular(20),indent: MediaQuery.of(context).size.width * 0.3,endIndent: MediaQuery.of(context).size.width * 0.3,),
            NavButton(page: LoginPage(), title: "Start the Journey")
            ],
          ),
        )
      ],
    )
    );
  }
}