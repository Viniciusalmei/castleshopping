import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  Icon icon; 
  String routepage; 
  

  IconsPage({super.key, required this.icon, required this.routepage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: icon,
      onTap: () => Navigator.pushNamed(context, routepage),
    );
  }
}