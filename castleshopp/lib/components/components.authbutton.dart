import 'package:castleshopp/screens/basescaffold/screens.home.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final Future<void> auth;
  const AuthButton({super.key,required this.title, required this.auth});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color(0XFF17395e),
        foregroundColor: Colors.white,
        fixedSize: Size(250,20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20)
        ),
        
      ),
      onPressed: () {
        if(auth == true) {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
        }
      
    }, child: Text(title));
  }
}