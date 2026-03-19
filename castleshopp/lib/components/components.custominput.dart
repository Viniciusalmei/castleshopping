import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String label; 
  final String hint;
  final bool? obscure;
  final Icon? icon;
  const CustomInput({super.key, required this.controller, required this.label, required this.hint, this.obscure,this.icon});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30),child:
     TextField(
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label, 
        hintText:hint,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(20)),
        fillColor: Colors.grey,
        suffixIcon: icon,
        suffixIconColor: Colors.black
      ),
      obscureText: obscure == true ? true : false
         ));
    
  }
}