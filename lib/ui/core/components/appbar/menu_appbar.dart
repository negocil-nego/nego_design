import 'package:flutter/material.dart';

class MenuAppbar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final Widget? leading;

  const MenuAppbar({super.key, this.leading, this.actions = const []});

  @override
  State<MenuAppbar> createState() => _MenuAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}

class _MenuAppbarState extends State<MenuAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: widget.leading,
      actions: widget.actions,
    );
  }
}
