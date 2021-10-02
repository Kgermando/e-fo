import 'package:flutter/material.dart';

class TitleFinProject extends StatelessWidget {
  const TitleFinProject({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Color(0xFFffa302)),
        ),
      ),
      child: const Text(
        'FINANCES ET PROJETS',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}