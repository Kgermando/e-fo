import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/constants/responsive.dart';

class Mission extends StatelessWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double maxWidth = MediaQuery.of(context).size.width;

    return (Responsive.isDesktop(context))
        ? Row(
          children: [
            Image.asset('assets/images/partenaires.png'),
            Expanded(
                child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xFFffa302)),
                    ),
                  ),
                  child: const Text(
                    'MISSION',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(kDefaultPadding * 2),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carre(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Expanded(
                            child: Text(
                              "Créer un fonds de financement des projets.",
                              overflow: TextOverflow.visible,
                              maxLines: 4,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carre(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Expanded(
                            child: Text(
                              "Financer la création d'entreprises de développement dans le Grand Kasaî.",
                              overflow: TextOverflow.visible,
                              maxLines: 4,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carre(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Expanded(
                            child: Text(
                              "Financer la création d'entrepreneurs dans le Grand Kasaî.",
                              overflow: TextOverflow.visible,
                              maxLines: 4,
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carre(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Expanded(
                            child: Text(
                              "Promouvoir la prise en charge du développement du Grand Kasai par les Kasaiens et Kasaiennes.",
                              overflow: TextOverflow.visible,
                              maxLines: 4,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carre(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Expanded(
                            child: Text(
                              "Promouvoir la prise en charge du développement du Grand Kasai par le fils et filles Kasai.",
                              overflow: TextOverflow.visible,
                              maxLines: 4,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        )
        : SizedBox(
          height: (Responsive.isTablet(context)) ? 700 : 600,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/partenaires.png'),
              Column(
                children: [
              Container(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(width: 1.0, color: Color(0xFFffa302)),
                  ),
                ),
                child: const Text(
                  'MISSION',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(kDefaultPadding * 2),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        carre(),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: Text(
                            "Créer un fonds de financement des projets.",
                            overflow: TextOverflow.visible,
                            maxLines: 6,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        carre(),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: Text(
                            "Financer la création d'entreprises de développement dans le Grand Kasaî.",
                            overflow: TextOverflow.visible,
                            maxLines: 6,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        carre(),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: Text(
                            "Financer la création d'entrepreneurs dans le Grand Kasaî.",
                            overflow: TextOverflow.visible,
                            maxLines: 6,
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        carre(),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: Text(
                            "Promouvoir la prise en charge du développement du Grand Kasai par les Kasaiens et Kasaiennes.",
                            overflow: TextOverflow.visible,
                            maxLines: 6,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        carre(),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: Text(
                            "Promouvoir la prise en charge du développement du Grand Kasai par le fils et filles Kasai.",
                            overflow: TextOverflow.visible,
                            maxLines: 6,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
                ],
              ),
            ],
          ),
        );
  }

  Widget carre() {
    return Container(
      width: 15.0,
      height: 15.0,
      color: secondaryColor,
    );
  }
}
