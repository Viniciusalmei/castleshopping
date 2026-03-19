import 'package:castleshopp/components/text/components.link.dart';
import 'package:castleshopp/data/data.api.dart';
import 'package:castleshopp/screens/auth/screens.login.dart';
import 'package:castleshopp/screens/screens.home.dart';
import 'package:flutter/material.dart';
import 'package:castleshopp/components/components.custominput.dart';
import 'package:castleshopp/components/components.authbutton.dart';
import 'package:castleshopp/components/text/components.customtitle.dart';
import 'package:castleshopp/components/text/components.description.dart';
import 'package:http/http.dart' as http ;




class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  
  String endpoint = "$api/users";

  String verify = "";

  Future<void> postRegister() async 
  {
    // Uri urlconvertida = Uri.parse(api);
    // final response = http.post(urlconvertida,
    // body:  {
    //   "email": email.text, 
    //   "password": password.text
    // }
    // );
    // print(response); 
    Navigator.pushNamed(context, '/home');


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
       
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.40, 
            child: Image.asset(
              "assets/images/logo1.png",
              fit: BoxFit.cover,
            ),
          ),

         
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            bottom: 0, 
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView( 
                child: Column(
                  spacing: 20,
                  children: [
                     
                     CustomTitle(title: "Register"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        CustomDescription(title: "Log in ? "),
                        LinkText(title: "Sign in",page: LoginPage(),),
                    ],),
                    CustomInput(controller: email , label: "Email", hint: "email@email.com",icon: Icon(Icons.email),),
                    CustomInput(controller: password , label: "password", hint: "Example Password",obscure: "password",icon: Icon(Icons.password)),
                    AuthButton(title: "Register", auth: postRegister())
                  ],
                ),
             ),
            ),
          ),
        ],
      ));
  }
}