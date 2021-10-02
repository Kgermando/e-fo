import 'package:flutter/material.dart';
import 'package:focad/main.dart';
import 'package:focad/pages/about/about_page.dart';
import 'package:focad/pages/auth/login_page.dart';
import 'package:focad/pages/auth/register.dart';
import 'package:focad/pages/contacts/contact_page.dart';
import 'package:focad/pages/finances_projects/financements_page.dart';
import 'package:focad/pages/homes/home_page.dart';
import 'package:focad/pages/partenaire_page.dart';
import 'package:focad/routes/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case layoutRoute:
      return _getPageRoute(const LayoutsApp());
      
    case homeRoute:
      return _getPageRoute(const HomePage());
    
    case aboutRoute:
      return _getPageRoute(const AboutPage());
    
    case contactRoute:
      return _getPageRoute(const ContactPage());

    case financementRoute:
      return _getPageRoute(const FinancementPage());

    case partenaireRoute:
      return _getPageRoute(const PartenairePage());

    case loginRoute:
      return _getPageRoute(const LoginPage());
    
    case registerRoute:
      return _getPageRoute(const RegisterPage());
      
    default:
      return _getPageRoute(const LayoutsApp());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
