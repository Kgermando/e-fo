import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/pages/about/about_page.dart';

class TextHomeHeader extends StatelessWidget {
  const TextHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlackColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      // constraints: const BoxConstraints(maxWidth: kMaxWidth),
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage('assets/images/partenaires.png'),
      //   fit: BoxFit.cover,
      // )),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          const Text.rich(TextSpan(
              text: "Bienvenue sur la plateforme ",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'FOKAD',
                  style: TextStyle(color: Color(0xFFffa302)),
                )
              ])),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: SizedBox(
              width: 850,
              child: Text(
                "Fédérer tous les Kasaiens et toutes les Kasaienne du monde entier autour de l'idéal du développement du Grand Kasai (GK) par la création d'un fons de financement du développement du GK réunissant au même endroit les ressources financières se tous les Kasaiens et toutes les Kasaienne du monde.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ),
          ),
          FittedBox(
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
              child: Row(
                children: const [
                  Text(
                    "En savoir plus",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffa302),
                    ),
                  ),
                  SizedBox(width: kDefaultPadding / 2),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xFFffa302),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
