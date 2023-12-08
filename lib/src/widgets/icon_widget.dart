import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.animation,
    required this.iconSize,
    required this.selected,
    required this.item,
    required this.unselectedIconColor,
  });

  final Animation<double> animation;
  final BottomBarItem item;
  final double iconSize;
  final bool selected;
  final Color? unselectedIconColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      heightFactor: 1.0,
      child: Badge(
        isLabelVisible: item.showBadge,
        label: item.badge,
        backgroundColor: item.badgeColor,
        padding: item.badgePadding,
        child: IconTheme(
          data: IconThemeData(
            color: selected
                ? item.backgroundColor ?? item.selectedColor
                : unselectedIconColor,
            size: iconSize,
          ),
          child: Padding(
            padding:
                item.showBadge ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
            child: selected
                ? item.selectedIcon != null
                    ? item.selectedIcon!
                    : item.icon!
                : item.icon!,
          ),
        ),
      ),
    );
  }
}
