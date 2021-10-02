import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';

class HeaderMenu extends StatefulWidget {
  const HeaderMenu({ Key? key, required this.title, required this.tap, 
    required this.active }) : super(key: key);

  final String title;
  final bool active;
  final VoidCallback tap;

  @override
  _HeaderMenuState createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  bool _isHover = false;  

  Color _borderColor() {
    if (widget.active) {
      return Colors.orange;
    } else if (!widget.active & _isHover) {
      return Colors.orange.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tap,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.active ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}