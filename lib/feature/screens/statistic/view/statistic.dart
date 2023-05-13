import 'package:flutter/material.dart';


class statistic extends StatefulWidget {
  statistic({Key? key}) : super(key: key);

  @override
  State<statistic> createState() => _statisticState();
}

class _statisticState extends State<statistic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Row(
        children: [
         
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("statistic"),
            ),
          )
        ],
      ),);
  }
}