import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  final Icon icon; 
  final String routepage; 
  

  IconsPage({super.key, required this.icon, required this.routepage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: icon,
      onTap: ()async => 
      await Navigator.pushNamed(context, routepage),
    );
  }
}