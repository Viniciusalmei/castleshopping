import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
    final String title;
   const CustomDescription({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, 
    style: TextStyle(
      color: Colors.black, 
      fontWeight: FontWeight.w300,
      fontSize: 20,
      
    )
    );
  }
}