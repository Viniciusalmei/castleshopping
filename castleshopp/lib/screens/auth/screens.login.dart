import 'package:castleshopp/components/components.authbutton.dart';
import 'package:castleshopp/components/components.custominput.dart';
import 'package:castleshopp/components/text/components.customtitle.dart';
import 'package:castleshopp/components/text/components.description.dart';
import 'package:castleshopp/components/text/components.link.dart';
import 'package:castleshopp/data/data.api.dart';
import 'package:castleshopp/models/user.dart';
import 'package:castleshopp/screens/auth/screens.register.dart';
import 'package:castleshopp/screens/basescaffold/screens.home.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  String endpoint = "$api/users";

  String verify = "";

  Future<List<User>> fetchStringList() async {
    final response = await http.get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      final jsonList = json.decode(response.body);
      List usersJson = jsonList['users'];
      return usersJson.map((e)=> User.fromJson(e)).toList();
    }else {
      print("Fail to fetch data");
      return []; 
    }
  }

  Future<void> verifyLogin(Future<List> DataList) async {
    List<User> users = await fetchStringList();
    final user = users.firstWhere(
      (u) =>
      u.email == username.text && 
      u.password == password.text, 
      orElse: ()=> User(id: -1, name: '', email: '', password: '')
    );

    if(user.id != -1){
      setState(() {
        print("Login Valido user ${user.id}");
        Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage  ()));
        verify = "";
      });
    }else {
      verify = "Email ou Senha Incorreto";
    }

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
                     
                     CustomTitle(title: "Login"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        CustomDescription(title: "Dont have An Account?"),
                        LinkText(title: "Sign Up",page: RegisterPage(),),
                    ],),
                    CustomInput(controller: username , label: "username", hint: "Example Name",icon: Icon(Icons.person),),
                    CustomInput(controller: password , label: "password", hint: "Example Password",obscure: "password",icon: Icon(Icons.password)),
                    AuthButton(title: "Login", auth: verifyLogin(fetchStringList())),
                    Text(verify, style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                    
                  ],
                ),
             ),
            ),
          ),
        ],
      ));
  }
}

