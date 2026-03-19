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
        title: Row(
          spacing: 100,
          children: [
            // Padding(padding: EdgeInsetsGeometry.all(20),child:
             Icon(Icons.person,),
            // ),
            
            Row(
              children: [
                IconsPage(icon: Icon(Icons.settings), routepage: '/settings'),
                IconsPage(icon: Icon(Icons.shopping_bag), routepage: '/shopping'),
                IconsPage(icon: Icon(Icons.exit_to_app), routepage: '/splash'),
              ],
            ),
          ],
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