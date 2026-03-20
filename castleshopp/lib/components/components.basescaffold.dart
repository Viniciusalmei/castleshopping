import 'package:castleshopp/components/components.icon.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  Widget body;

   BaseScaffold({super.key, required this.body, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        title: 
        Padding(padding: 
        EdgeInsetsGeometry.all(20),
        child: Row(
          spacing: MediaQuery.of(context).size.width * 0.6,
          children: [
             Icon(Icons.person,size: 30,color: Colors.white),
            Row(
              children: [
                IconsPage(icon: Icon(Icons.settings,size: 30,color: Colors.white,), routepage: '/settings'),
                IconsPage(icon: Icon(Icons.shopping_bag,size: 30,color: Colors.white), routepage: '/shopping'),
                IconsPage(icon: Icon(Icons.exit_to_app,size: 30,color: Colors.white), routepage: '/splash'),
              ],
            ),
          ],
        ),  
        ),
        
        toolbarHeight: 120,
        backgroundColor: Color(0XFF17395e),
        // titleSpacing: 20,
        // actionsPadding: EdgeInsets.all(20),
      ),
      body: body
    );

  }
}