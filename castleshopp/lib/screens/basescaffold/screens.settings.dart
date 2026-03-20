import 'package:castleshopp/components/components.basescaffold.dart';
import 'package:castleshopp/components/text/components.customtitle.dart';
import 'package:castleshopp/components/text/components.description.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(body: Center(
      child: Column(
        spacing: 20,
        children: [
          CustomTitle(title: "Settings",),
          CircleAvatar(radius: 60,),
          CustomDescription(title: ""),

        ],
      ),
    ));
  }
}