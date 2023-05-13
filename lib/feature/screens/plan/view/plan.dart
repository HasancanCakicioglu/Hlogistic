import 'package:flutter/material.dart';


class plan extends StatefulWidget {
  plan({Key? key}) : super(key: key);

  @override
  State<plan> createState() => _planState();
}

class _planState extends State<plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Row(
        children: [
          
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("plan"),
            ),
          )
        ],
      ),);
  }
}