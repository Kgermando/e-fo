import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/pages/about/components/team_about.dart';
import 'package:focad/pages/about/components/title_about.dart';
import 'package:focad/pages/homes/components/team_home.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const TitleAbout(),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(width: 1.0, color: Color(0xff131e29)),
                  ),
                ),
                child: const Text(
                  'Qui sommes nous ?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFffa302)
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            textAlign: TextAlign.start,
            maxLines: 5,
            style: TextStyle(
                color: Colors.black,
                height: 1.5,
              ),
            ),
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
                  'Notre Vision',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffa302)),
                ),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Fédérer tous les Kasaiens et toutes les Kasaienne du monde entier autour de l'idéal du développement du Grand Kasai (GK) par la création d'un fons de financement du développement du GK réunissant au même endroit les ressources financières se tous les Kasaiens et toutes les Kasaienne du monde.",
              textAlign: TextAlign.start,
              maxLines: 5,
              style: TextStyle(
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(width: 1.0, color: Color(0xff131e29)),
                  ),
                ),
                child: const Text(
                  'Schema fonctionel de FOKAD',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFffa302)
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/schema.png',
          ),
          const SizedBox(height: 20.0,),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Text(
                  'Répartion du capital du fonds en trois categores d\'investisseurs.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              carre(),
              const SizedBox(
                width: 14.0,
              ),
              const Expanded(
                child: Text(
                  "Super Grands Investisseurs (SGI): ",
                  overflow: TextOverflow.visible,
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 14,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rond(),
              const SizedBox(
                width: 10.0,
              ),
              const Expanded(
                child: Text(
                  "Détenant au minimum 1000 partis sociales du capital",
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
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              carre(),
              const SizedBox(
                width: 14.0,
              ),
              const Expanded(
                child: Text(
                  "Grands Investisseurs (GI): ",
                  overflow: TextOverflow.visible,
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 14,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rond(),
              const SizedBox(
                width: 10.0,
              ),
              const Expanded(
                child: Text(
                  "Détenant au minimum 1000 partis sociales du capital",
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
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              carre(),
              const SizedBox(
                width: 14.0,
              ),
              const Expanded(
                child: Text(
                  "Investisseurs Ordinaires(IO): ",
                  overflow: TextOverflow.visible,
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 14,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rond(),
              const SizedBox(
                width: 10.0,
              ),
              const Expanded(
                child: Text(
                  "Détenant au minimum 10 partis sociales du capital",
                  overflow: TextOverflow.visible,
                  // maxLines: 5,
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
            height: 20.0,
          ),
          Image.asset(
            'assets/images/social.png'
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
              "Toute proportion de parts sociales demeureant constante, en divisant par 10 le nombre d'investisseurs: 300 000 investisseurs produisent 525 000 000 000.",
              style: TextStyle(
                fontSize: 16,
              ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Toute proportion de parts sociales demeureant constante, en divisant par 100 le nombre d'investisseurs: 300 000 investisseurs produisent 52 500 000 000.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Toute proportion de parts sociales demeureant constante en divisant, en divisant par 1000 le nombre d'investisseurs: 300000 investisseurs produisent 5 250 000 000.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const TeamAbout(),
          const SizedBox(
            height: 20.0,
          ),
          const TeamHome(),
          const SizedBox(
            height: 20.0,
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

  Widget carreFond() {
    return Container(
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
          border: Border.all(
        color: secondaryColor,
      )));
  }

  Widget rond() {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      )
    );
  }
}