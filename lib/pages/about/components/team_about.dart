import 'package:flutter/material.dart';
import 'package:focad/constants/responsive.dart';

class TeamAbout extends StatelessWidget {
  const TeamAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFffa302)),
            ),
          ),
          child: const Text(
            'COORDINATION de FOKAD',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
            child: (Responsive.isDesktop(context))
                ? Row(
                    children: const [
                      Expanded(
                        child: TeamHomeMaterial(
                            name: 'Papa Louis Kanyinda',
                            grade: 'Product Manager',
                            description:
                                'Aut maiores voluptates amet et quis praesentium qui senda para',
                            image: 'assets/images/partenaires.png'),
                      ),
                      Expanded(
                        child: TeamHomeMaterial(
                            name: 'Papa Louis Kanyinda',
                            grade: 'Product Manager',
                            description:
                                'Aut maiores voluptates amet et quis praesentium qui senda para',
                            image: 'assets/images/partenaires.png'),
                      ),
                    ],
                  )
                : Column(
                    children: const [
                      TeamHomeMaterial(
                          name: 'Papa Louis Kanyinda',
                          grade: 'Product Manager',
                          description:
                              'Aut maiores voluptates amet et quis praesentium qui senda para',
                          image: 'assets/images/partenaires.png'),
                      TeamHomeMaterial(
                          name: 'Papa Louis Kanyinda',
                          grade: 'Product Manager',
                          description:
                              'Aut maiores voluptates amet et quis praesentium qui senda para',
                          image: 'assets/images/partenaires.png')
                    ],
                  )),
      ],
    );
  }
}

class TeamHomeMaterial extends StatelessWidget {
  const TeamHomeMaterial(
      {Key? key,
      required this.name,
      required this.grade,
      required this.description,
      required this.image})
      : super(key: key);

  final String name, grade, description, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Responsive.isDesktop(context)) ? 200 : 300,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
            elevation: 6.0,
            child: (Responsive.isDesktop(context))
                ? Row(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child:
                              CircleAvatar(backgroundImage: AssetImage(image))),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffa302),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                grade,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const Divider(),
                            const SizedBox(height: 30.0),
                            Expanded(
                              child: Text(
                                description,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child:
                              CircleAvatar(backgroundImage: AssetImage(image))),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            name,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFffa302),
                            ),
                          ),
                          Text(
                            grade,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const Divider(),
                          const SizedBox(height: 20.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              description,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  )),
      ),
    );
  }
}
