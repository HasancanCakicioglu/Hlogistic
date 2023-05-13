import 'package:flutter/material.dart';


class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Row(
        children: [
          
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("settings"),
            ),
          )
        ],
      ),);
  }
}