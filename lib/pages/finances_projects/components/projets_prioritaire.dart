import 'package:flutter/material.dart';
import 'package:focad/constants/responsive.dart';

class ProjetPrioritaire extends StatelessWidget {
  const ProjetPrioritaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xff131e29)),
                  ),
                ),
                child: const Text(
                  'PROJETS PRIORITAIRES',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffa302)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const ProjectPriority(),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xff131e29)),
                  ),
                ),
                child: const Text(
                  'STATS DES PROJETS',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffa302)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const ProjectsNombre(),
        ],
      ),
    );
  }
}

class ProjectPriority extends StatelessWidget {
  const ProjectPriority({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (Responsive.isDesktop(context)) ? Row(
          children: const [
            Expanded(
              child: Material(
                elevation: 10.0,
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text("Construction d'une cimenterie"),
                  subtitle: Text('resumé du projet en quelques lignes'),
                  trailing: Icon(Icons.arrow_upward, color: Colors.green,),
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Expanded(
              child: Material(
                elevation: 10.0,
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text("Construction d'un atelier métalique"),
                  subtitle: Text('resumé du projet en quelques lignes'),
                  trailing: Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ) 
        : Column(
          children: const [
            Material(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.personal_injury_outlined),
                title: Text("Construction d'une cimenterie"),
                subtitle: Text('resumé du projet en quelques lignes'),
                trailing: Icon(Icons.arrow_upward, color: Colors.green,),
              ),
            ),
            SizedBox(height: 10.0,),
            Material(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.personal_injury_outlined),
                title: Text("Construction d'un atelier métalique"),
                subtitle: Text('resumé du projet en quelques lignes'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        (Responsive.isDesktop(context)) ? Row(
          children: const [
            Expanded(
              child: Material(
                elevation: 10.0,
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text("Etablissement d'une entreprise minière"),
                  subtitle: Text('resumé du projet en quelques lignes'),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Material(
                elevation: 10.0,
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text("Construction d'une cimenterie"),
                  subtitle: Text('resumé du projet en quelques lignes'),
                  trailing: Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        )
        : Column(
          children: const [
            Material(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.personal_injury_outlined),
                title: Text("Construction d'une cimenterie"),
                subtitle: Text('resumé du projet en quelques lignes'),
                trailing: Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Material(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.personal_injury_outlined),
                title: Text("Construction d'un atelier métalique"),
                subtitle: Text('resumé du projet en quelques lignes'),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ProjectsNombre extends StatelessWidget {
  const ProjectsNombre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
              elevation: 10.0,
              child: (Responsive.isDesktop(context))
                  ? Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: const [
                            Text(
                              'Total projets',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '1250',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: const [
                            Text(
                              'Projets financés',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '650',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: const [
                            Text(
                              'Projets en examens',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '400',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: const [
                            Text(
                              'Projets réalisés',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        )),
                      ],
                    )
                  : Column(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Total projets',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '1250',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'Projets financés',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '650',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'Projets en examens',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '400',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'Projets réalisés',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff131e29)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302)),
                            ),
                          ],
                        ),
                      ],
                    )),
        ),
      ],
    );
  }
}
