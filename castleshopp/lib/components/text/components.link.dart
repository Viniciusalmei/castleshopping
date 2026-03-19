import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  final String title;
  final Widget page;
  const LinkText({super.key,required this.title,required this.page});

  @override
  Widget build(BuildContext context) {
    return 
    
    GestureDetector(
      child: Text(title,style: TextStyle(
      color: const Color.fromARGB(255, 95, 148, 192),
      fontSize: 20,
    ),),
    onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> page));

    },
    );
    
    
  }
}