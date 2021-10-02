import 'package:flutter/material.dart';
import 'package:focad/locator.dart';
import 'package:focad/routes/route_names.dart';
import 'package:focad/routes/router.dart';
import 'package:focad/services/navigation_service.dart';
import 'package:focad/widgets/header/header.dart';
import 'package:provider/provider.dart';
import 'package:focad/provider/controller.dart';
import 'package:focad/widgets/drawer/drawer_menu.dart';


class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              flex: 4,
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: homeRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
