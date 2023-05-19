import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class NavigationRail_Trailing extends ConsumerWidget {
  const NavigationRail_Trailing({Key? key, required this.icon,required this.onPressed})
      : super(key: key);

  final Icon icon;
  final VoidCallback onPressed;
 

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 45,
          child: InkWell(
          onTap: (){
            onPressed();
          },
          child: Center(
            child: icon,
          ),
        ),),
      ],
    ));
  }
}
