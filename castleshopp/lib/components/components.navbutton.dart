import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Widget page;
  final String title; 

  const NavButton({super.key,required this.page, required this.title});

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
      Navigator.push(context,MaterialPageRoute(builder: (context)=> page));
    }, child: Text(title));
  }
}