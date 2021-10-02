import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/constants/responsive.dart';

class MecanismeDev extends StatelessWidget {
  const MecanismeDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Row(
            children: [
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
                      'MECANISME DE DEVELOPPEMENT DU GK A TRAVERS FOKAD',
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
                                "Création d'un fonds de financier vers le GK par le developpement d'une industrie minière d'exportation.",
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
                                "Etablissement d'un socle de développement d'infrastructures par la création d'une forte industrie des matériaux de construction.",
                                overflow: TextOverflow.visible,
                                maxLines: 5,
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
                                "Etablissement de la sécurité alimentaire par le financement du développement d'une forte industrie agro-alimentaire autour de:",
                                overflow: TextOverflow.visible,
                                maxLines: 5,
                                
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "L'agriculture",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "L'élévage",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "La pèche(pisciculture ou aquaculture)",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
                            SizedBox(
                              width: (Responsive.isTablet(context)) ? 500 : 400,
                              child: const Text(
                                "Création d'une couverture de santé solide dans le GK par:",
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "Le financement de la consolidation des infrastructures de santé.",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de l'établissement d'une chaine d'approvisionnement des médicaments.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 5,
                                        
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
                            )),
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
                                "La création d'un cadre éducatif de base solide par:",
                                overflow: TextOverflow.visible,
                                maxLines: 5,
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de la consolidation des infrastructures existantes de l'éducation.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
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
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de la construction de nouvelles infrastructures de l'éducation en zones rurales.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
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
                            )),
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
                                "La création d'une économie autocentréz dans le GK par le financement des infrastructures routières en synergie avec les programmes gouvernementaux nationaux et provinciaux du GK par:",
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Financement de la création des entreprises.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
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
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "Entreprises FOKAD",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Appel à projet des investisseurs de GK",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
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
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Financement en soutien des projets financée par la FPI",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
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
                            )),
                      ],
                    ),
                  )
                ],
              )),
              Expanded(child: Image.asset('assets/images/partenaires.png')),
            ],
          )
        : SizedBox(
            height: (Responsive.isTablet(context)) ? 500 : 800,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Color(0xFFffa302)),
                      ),
                    ),
                    child: const Text(
                      'MECANISME DE DEVELOPPEMENT DU GK A TRAVERS FOKAD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
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
                              child:  Text(
                                "Création d'un fonds de financier vers le GK par le developpement d'une industrie minière d'exportation.",
                                overflow: TextOverflow.visible,
                                maxLines: 4,
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
                                "Etablissement d'un socle de développement d'infrastructures par la création d'une forte industrie des matériaux de construction.",
                                overflow: TextOverflow.visible,
                                maxLines: 4,
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
                                "Etablissement de la sécurité alimentaire par le financement du développement d'une forte industrie agro-alimentaire autour de:",
                                overflow: TextOverflow.visible,
                                maxLines: 4,
                                
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "L'agriculture",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "L'élévage",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "La pèche(pisciculture ou aquaculture)",
                                      overflow: TextOverflow.visible,
                                      maxLines: 4,
                                      
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
                                "Création d'une couverture de santé solide dans le GK par:",
                                overflow: TextOverflow.visible,
                                maxLines: 5,
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de la consolidation des infrastructures de santé.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 5,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de l'établissement d'une chaine d'approvisionnement des médicaments.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 5,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
                                "La création d'un cadre éducatif de base solide par:",
                                overflow: TextOverflow.visible,
                                maxLines: 5,
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de la consolidation des infrastructures existantes de l'éducation.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 5,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Le financement de la construction de nouvelles infrastructures de l'éducation en zones rurales.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 5,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
                                "La création d'une économie autocentréz dans le GK par le financement des infrastructures routières en synergie avec les programmes gouvernementaux nationaux et provinciaux du GK par:",
                                overflow: TextOverflow.visible,
                                maxLines: 4,
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
                          height: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Financement de la création des entreprises.",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Entreprises FOKAD",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Appel à projet des investisseurs de GK",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    carreFond(),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Financement en soutien des projets financée par la FPI",
                                        overflow: TextOverflow.visible,
                                        maxLines: 4,
                                        
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
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

  Widget carreFond() {
    return Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
            border: Border.all(
          color: secondaryColor,
        )));
  }
}
