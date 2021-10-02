import 'package:flutter/material.dart';
import 'package:focad/widgets/drawer/custom_text.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, 
      required this.active, required this.tap, required this.icon})
      : super(key: key);

  final String title;
  final VoidCallback tap;
  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: active ? Colors.orange : Colors.white,
      onTap: tap,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: active ? Colors.white : Colors.black87,
      ),
      title: CustomText(
        text: title,
        color: active ? Colors.white : Colors.black87,
        size: active ? 20 : 16,
        weight: active ? FontWeight.bold : FontWeight.w600,
      ),
    );
  }
}
