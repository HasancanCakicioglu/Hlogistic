import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlogistic/product/components/drawer/provider_navigationrail.dart';

class NavigationRail_ListItem extends ConsumerWidget {
  const NavigationRail_ListItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.pageEnum,
    required this.extended,
    required this.animationWidth,
  }) : super(key: key);

  final Icon icon;
  final String text;
  final NavigationPagesEnum pageEnum;
  final bool extended;
  final double animationWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myNavigationRailNotifier = ref.read(navigationRailProvider);
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        myNavigationRailNotifier.selectedIndex = pageEnum.index;
      },
      splashColor: theme.listTileTheme.selectedColor,
      highlightColor: theme.primaryColor.withOpacity(0.2),
      child: Container(
        width: double.infinity,
        child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child:Row(
          children: [
            icon,
            if (animationWidth > 150) SizedBox(width: 8),
            if (animationWidth > 150) Text(text),
          ],
        ),
      ),
    ));
  }
}
