import 'package:flutter/material.dart';


class profit extends StatefulWidget {
  profit({Key? key}) : super(key: key);

  @override
  State<profit> createState() => _profitState();
}

class _profitState extends State<profit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Row(
        children: [
          
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("profit"),
            ),
          )
        ],
      ),);
  }
}