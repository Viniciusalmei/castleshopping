import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(""),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.6,
            child: 
            Column(
              children: [

              ],
            ),
          )
        ],

      ),
    );
  }
}