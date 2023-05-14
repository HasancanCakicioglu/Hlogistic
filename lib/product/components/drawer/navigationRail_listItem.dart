import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlogistic/product/components/drawer/provider_navigationrail.dart';


class NavigationRail_ListItem extends ConsumerWidget {
  const NavigationRail_ListItem(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final myNavigationRailNotifier = ref.read(navigationRailProvider);
    return ListTile(
      onTap: (){
        myNavigationRailNotifier.selectedIndex=(myNavigationRailNotifier.selectedIndex+1)%4;
      },
      leading: icon,
      title: Text(text),
    );
  }
}
