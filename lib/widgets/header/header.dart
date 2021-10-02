import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/constants/responsive.dart';
import 'package:focad/locator.dart';
import 'package:focad/provider/app_provider.dart';
import 'package:focad/provider/controller.dart';
import 'package:focad/routes/enum.dart';
import 'package:focad/routes/route_names.dart';
import 'package:focad/services/navigation_service.dart';
import 'package:focad/widgets/header/header_menu.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
      width: double.infinity,
      color: kDarkBlackColor, 
      child: SafeArea(
          child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Row(
              children: [
                if (!Responsive.isDesktop(context))
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: context.read<Controller>().controlMenu,
                  ),
                Image.asset(
                  'assets/images/logo_sans_fond.png',
                  width: 100,
                  height: 100,
                ),
                
                if (Responsive.isDesktop(context))
                const Spacer(),
                if (Responsive.isDesktop(context))
                HeaderMenu(
                  title: 'Acceuil',
                  active: appProvider.currentPage == DisplayPage.home,
                  tap: () {
                    appProvider.changeCurrentPage(DisplayPage.home);
                    locator<NavigationService>().navigateTo(homeRoute);
                  },
                ),
                if (Responsive.isDesktop(context))
                  HeaderMenu(
                    title: 'A Propos',
                    active: appProvider.currentPage == DisplayPage.about,
                    tap: () {
                      appProvider.changeCurrentPage(DisplayPage.about);
                      locator<NavigationService>().navigateTo(aboutRoute);
                    },
                  ),
                  if (Responsive.isDesktop(context))
                  HeaderMenu(
                    title: 'Financements et Projets',
                    active: appProvider.currentPage == DisplayPage.financement,
                    tap: () {
                      appProvider.changeCurrentPage(DisplayPage.financement);
                      locator<NavigationService>().navigateTo(financementRoute);
                    },
                  ),
                if (Responsive.isDesktop(context))
                HeaderMenu(
                  title: 'Login',
                  active: appProvider.currentPage == DisplayPage.login,
                  tap: () {
                    appProvider.changeCurrentPage(DisplayPage.login);
                    locator<NavigationService>().navigateTo(loginRoute);
                  },
                ),
                if (Responsive.isDesktop(context))
                  HeaderMenu(
                    title: 'S\'enregister',
                    active: appProvider.currentPage == DisplayPage.register,
                    tap: () {
                      appProvider.changeCurrentPage(DisplayPage.register);
                      locator<NavigationService>().navigateTo(registerRoute);
                    },
                  ),
                if (Responsive.isDesktop(context))
                  HeaderMenu(
                    title: 'Contact',
                    active: appProvider.currentPage == DisplayPage.contact,
                    tap: () {
                      appProvider.changeCurrentPage(DisplayPage.contact);
                      locator<NavigationService>().navigateTo(contactRoute);
                    },
                  ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding /(Responsive.isDesktop(context) ? 1 : 2),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.shopping_cart_outlined),
                      Text("DONATE", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
