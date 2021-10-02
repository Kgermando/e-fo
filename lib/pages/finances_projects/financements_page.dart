import 'package:flutter/material.dart';
import 'package:focad/pages/finances_projects/components/projets_prioritaire.dart';
import 'package:focad/pages/finances_projects/components/title_fin.dart';

class FinancementPage extends StatefulWidget {
  const FinancementPage({ Key? key }) : super(key: key);

  @override
  _FinancementPageState createState() => _FinancementPageState();
}

class _FinancementPageState extends State<FinancementPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            TitleFinProject(),
            
            SizedBox(height: 20.0,),
            ProjetPrioritaire(),
          ],
        ),
      ),
    );
  }
}