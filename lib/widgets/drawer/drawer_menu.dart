import 'dart:html';

import 'package:flutter/material.dart';
import 'package:focad/locator.dart';
import 'package:focad/provider/app_provider.dart';
import 'package:focad/routes/enum.dart';
import 'package:focad/routes/route_names.dart';
import 'package:focad/services/navigation_service.dart';
import 'package:focad/widgets/drawer/drawer_list_tile.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
                radius: 100.0),
            accountName: const Text(
              'FOKAD',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text(
              'FONDS KASAIEN DE DEVELOPPEMENT',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),

          // Column(
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.all(kDefaultPadding),
          //       child: Image.asset(
          //         "assets/images/logo.png",
          //         height: 100,
          //         width: 100,
          //       ),
          //     ),
          //     const Text(
          //       'FOKAD',
          //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //     ),
          //     const Text(
          //       'FONDS KASAIEN DE DEVELOPPEMENT',
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          //     ),
          //   ],
          // ),
          DrawerListTile(
            title: 'Acceuil',
            icon: Icons.home,
            active: appProvider.currentPage == DisplayPage.home,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.home);
              locator<NavigationService>().navigateTo(homeRoute);
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: 'A Propos de nous',
            icon: Icons.supervised_user_circle_sharp,
            active: appProvider.currentPage == DisplayPage.about,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.about);
              locator<NavigationService>().navigateTo(aboutRoute);
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: 'Financements et projets',
            icon: Icons.monetization_on_sharp,
            active: appProvider.currentPage == DisplayPage.financement,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.financement);
              locator<NavigationService>().navigateTo(financementRoute);
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: 'Login',
            icon: Icons.login_sharp,
            active: appProvider.currentPage == DisplayPage.login,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.login);
              locator<NavigationService>().navigateTo(loginRoute);
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: 'S\'enregister',
            icon: Icons.fiber_manual_record,
            active: appProvider.currentPage == DisplayPage.register,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.register);
              locator<NavigationService>().navigateTo(registerRoute);
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: 'Contact',
            icon: Icons.contact_mail,
            active: appProvider.currentPage == DisplayPage.contact,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.contact);
              locator<NavigationService>().navigateTo(contactRoute);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
